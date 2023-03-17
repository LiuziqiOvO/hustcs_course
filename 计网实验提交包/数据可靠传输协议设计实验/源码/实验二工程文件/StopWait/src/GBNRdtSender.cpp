//
// Created by 26557 on 2022/11/14.
//

#include "Global.h"
#include "GBNRdtSender.h"


GBNRdtSender:: GBNRdtSender(): nextseqnum(0), waitingState(false)
{
}


GBNRdtSender::~GBNRdtSender()
{
}

bool GBNRdtSender::getWaitingState() {
    return waitingState;
}

bool GBNRdtSender::send(const Message &message) {
    if (this->nextseqnum > base + N)    return false;
    else {
        //message->packet
        this->sndpkt[nextseqnum].acknum = -1; //忽略该字段
        this->sndpkt[nextseqnum].seqnum = this->nextseqnum;
        this->sndpkt[nextseqnum].checksum = 0;
        memcpy(this->sndpkt[nextseqnum].payload, message.data, sizeof(message.data));
        this->sndpkt[nextseqnum].checksum = pUtils->calculateCheckSum(this->sndpkt[nextseqnum]);
        pUtils->printPacket("发送方发送报文",this->sndpkt[nextseqnum]);
        pns->sendToNetworkLayer(RECEIVER,this->sndpkt[nextseqnum]);//调用模拟网络环境的sendToNetworkLayer，通过网络层发送到对方

        pns->startTimer(SENDER, Configuration::TIME_OUT, this->sndpkt[nextseqnum].seqnum); //启动发送方定时器
        nextseqnum++;
        this->waitingState = true;                                                              //进入等待状态
        return true;
    }
}


void GBNRdtSender::receive(const Packet &ackPkt) {
    printf("\nsend: [%d, %d, %d]\n",base,nextseqnum,base+N);
        //检查校验和是否正确
    int checkSum = pUtils->calculateCheckSum(ackPkt);
    //如果校验和正确
    if (checkSum == ackPkt.checksum) {
        base = ackPkt.acknum + 1;     //不出意外的话~下一个该收到的(base)就是ack+1
        if(base == nextseqnum){
            pUtils->printPacket("发送方正确收到确认", ackPkt);
            pns->stopTimer(SENDER, ackPkt.acknum);		//关闭定时器
        }
        else{//重复确认ACK
            pns->stopTimer(SENDER, base);		//重启base的计时器
            pns->startTimer(SENDER, Configuration::TIME_OUT, base); //TODO:bug好像是因为没等这个关闭,就检测超时,又发了一个新包过去

        }
    }
    this->waitingState = false;
}


void GBNRdtSender::timeoutHandler(int seqNum) {
    //重传base-base+n
    pUtils->printPacket("发送方定时器时间到，go back N", sndpkt[seqNum]);

    for(int i=seqNum; i<=this->nextseqnum -1 ; i++){
        pns->stopTimer(SENDER,i);							        //首先关闭定时器
        pns->sendToNetworkLayer(RECEIVER, this->sndpkt[i]);			//重新发送数据包
        pns->startTimer(SENDER, Configuration::TIME_OUT, i);		//重新启动发送方定时器
    }
}

//
// Created by 26557 on 2022/11/14.
//

#include "Global.h"
#include "TCPRdtSender.h"


TCPRdtSender:: TCPRdtSender(): nextseqnum(0), waitingState(false)
{
}


TCPRdtSender::~TCPRdtSender()
{
}

bool TCPRdtSender::getWaitingState() {
    return waitingState;
}

bool TCPRdtSender::send(const Message &message) {
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
        if(base == nextseqnum)
            pns->startTimer(SENDER, Configuration::TIME_OUT, this->sndpkt[nextseqnum].seqnum); //启动发送方定时器
        nextseqnum++;

        this->waitingState = true;                                                              //进入等待状态
        return true;
    }
}


void TCPRdtSender::receive(const Packet &ackPkt) {
        printf("\nsend: [%d, %d, %d]\n",base,nextseqnum,base+N);
        //检查校验和是否正确
        int checkSum = pUtils->calculateCheckSum(ackPkt);
        //如果校验和正确
        if (checkSum == ackPkt.checksum) {
            if(ackPkt.acknum >= base){
                pUtils->printPacket("发送方正确收到确认", ackPkt);
                pns->stopTimer(SENDER, ackPkt.acknum);		//关闭定时器
                base = ackPkt.acknum+1;
            }else{//重复ACK
                //TODO: 快速重传:如果发送收到一个数据的3个重复ACK，它会认为确认数据之后的报文段丢失
                pns->stopTimer(SENDER, base);
                pns->startTimer(SENDER, Configuration::TIME_OUT, base);
                cnt[ackPkt.acknum]++;
                if(cnt[ackPkt.acknum] == 3){
                    pUtils->printPacket("发送方快速重传", sndpkt[base]);
                    pns->sendToNetworkLayer(RECEIVER, sndpkt[base]);//重传base
                }

            }

            this->waitingState = false;
        } 

}


void TCPRdtSender::timeoutHandler(int seqNum) {
    //重传base-base+n
    pUtils->printPacket("发送方定时器时间到，go back N", sndpkt[seqNum]);

    for(int i=seqNum; i<=this->nextseqnum -1 ; i++){
        pns->stopTimer(SENDER,i);							        //首先关闭定时器
        pns->sendToNetworkLayer(RECEIVER, this->sndpkt[i]);			//重新发送数据包
        pns->startTimer(SENDER, Configuration::TIME_OUT, i);		//重新启动发送方定时器
    }
}

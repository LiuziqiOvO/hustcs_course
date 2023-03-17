//
// Created by 26557 on 2022/11/15.
//

#include "global.h"
#include "SRRdtSender.h"

SRRdtSender:: SRRdtSender(): nextseqnum(0), waitingState(false){
}

SRRdtSender:: ~SRRdtSender()= default;


bool SRRdtSender::getWaitingState() {
    return waitingState;
}

bool SRRdtSender::send(const Message &message) {
    if (this->nextseqnum > base + N) return false;
    else {
        //message->packet
        this->sndpkt[nextseqnum].acknum = -1; //忽略该字段
        this->sndpkt[nextseqnum].seqnum = this->nextseqnum;
        this->sndpkt[nextseqnum].checksum = 0;
        memcpy(this->sndpkt[nextseqnum].payload, message.data, sizeof(message.data));
        this->sndpkt[nextseqnum].checksum = pUtils->calculateCheckSum(this->sndpkt[nextseqnum]);
        pUtils->printPacket("发送方发送报文", this->sndpkt[nextseqnum]);
        pns->sendToNetworkLayer(RECEIVER, this->sndpkt[nextseqnum]);//调用模拟网络环境的sendToNetworkLayer，通过网络层发送到对方

        if (base == nextseqnum)
            pns->startTimer(SENDER, Configuration::TIME_OUT, this->sndpkt[nextseqnum].seqnum); //启动发送方定时器
        nextseqnum++;
        this->waitingState = true;                                                              //进入等待状态
        return true;
    }
}

void SRRdtSender::receive(const Packet &ackPkt) {
    printf("\nsend: [%d, %d, %d]\n",base,nextseqnum,base+N);
    //检查校验和是否正确
    int checkSum = pUtils->calculateCheckSum(ackPkt);
    //如果校验和正确
    if (checkSum == ackPkt.checksum) {
        pUtils->printPacket("发送方正确收到确认", ackPkt);
        pns->stopTimer(SENDER,ackPkt.acknum);   //关掉该包的计时器
        if(base == ackPkt.acknum){
            base++;
            this->waitingState = false;
        }
    }
}

void SRRdtSender::timeoutHandler(int seqNum) {
    //重传base-base+n
    pUtils->printPacket("发送方定时器时间到，重传", sndpkt[seqNum]);
    pns->stopTimer(SENDER,seqNum);							        //首先关闭定时器
    pns->sendToNetworkLayer(RECEIVER, this->sndpkt[seqNum]);		//重新发送数据包
    pns->startTimer(SENDER, Configuration::TIME_OUT, seqNum );		//重新启动发送方定时器
}



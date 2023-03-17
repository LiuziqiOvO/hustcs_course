//
// Created by 26557 on 2022/11/14.
//

#include "Global.h"
#include "GBNRdtReceiver.h"

GBNRdtReceiver::GBNRdtReceiver():expectSequenceNumberRcvd(0)
{
    sendpkt.acknum = -1; //初始状态下，上次发送的确认包的确认序号为-1，使得当第一个接受的数据包出错时该确认报文的确认号为-1
    sendpkt.checksum = 0;
    sendpkt.seqnum = -1;	//忽略该字段
    for(int i = 0; i < Configuration::PAYLOAD_SIZE;i++){
        sendpkt.payload[i] = '.';
    }
    sendpkt.checksum = pUtils->calculateCheckSum(sendpkt);
}


GBNRdtReceiver::~GBNRdtReceiver()
{
}

void GBNRdtReceiver::receive(const Packet &packet) {
    //检查校验和是否正确
    int checkSum = pUtils->calculateCheckSum(packet);
    //如果校验和正确，同时收到报文的序号等于接收方期待收到的报文序号一致
    if (checkSum == packet.checksum && this->expectSequenceNumberRcvd == packet.seqnum) {
        pUtils->printPacket("接收方正确收到发送方的报文", packet);

        //取出Message，向上递交给应用层
        Message msg;
        memcpy(msg.data, packet.payload, sizeof(packet.payload));
        pns->delivertoAppLayer(RECEIVER, msg);

        sendpkt.acknum = packet.seqnum; //确认序号等于收到的报文序号
        sendpkt.checksum = pUtils->calculateCheckSum(sendpkt);
        pUtils->printPacket("接收方发送确认报文", sendpkt);
        pns->sendToNetworkLayer(SENDER, sendpkt);	//调用模拟网络环境的sendToNetworkLayer，通过网络层发送确认报文到对方
        this->expectSequenceNumberRcvd++;
    }
    else {
        if (checkSum != packet.checksum) {
            pUtils->printPacket("接收方没有正确收到发送方的报文,数据校验错误", packet);
        }
        else if(this->expectSequenceNumberRcvd != packet.seqnum){
            pUtils->printPacket("接收方没有正确收到发送方的报文,报文序号不对", packet);
        }
        pUtils->printPacket("接收方重新发送上次的确认报文", sendpkt);
        pns->sendToNetworkLayer(SENDER, sendpkt);	//调用模拟网络环境的sendToNetworkLayer，通过网络层发送上次的确认报文

    }
}
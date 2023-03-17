//
// Created by 26557 on 2022/11/15.
//
#include"Global.h"
#include"SRRdtReceiver.h"

SRRdtReceiver::SRRdtReceiver() : expectSequenceNumberRcvd(0){
    rcvbase=0;
    for(int i = 0; i < Configuration::PAYLOAD_SIZE;i++){
        sendpkt.payload[i] = '.';
    }

}

SRRdtReceiver::~SRRdtReceiver(){

}

void SRRdtReceiver::receive(const Packet &packet){
    printf("\nrcv: [%d, %d]\n",rcvbase,rcvbase+N);
    //检查校验和是否正确
    int checkSum = pUtils->calculateCheckSum(packet);
    //如果校验和正确，同时收到报文的序号等于接收方期待收到的报文序号一致
    if (checkSum == packet.checksum && packet.seqnum<rcvbase+N) {
        if(packet.seqnum>=rcvbase){//在预计收到窗口内
            pUtils->printPacket("接收方正确收到发送方的报文", packet);
            //发送对应的ack
            sendpkt.acknum = packet.seqnum;
            sendpkt.checksum = pUtils->calculateCheckSum(sendpkt);
            pUtils->printPacket("接收方发送确认报文", sendpkt);
            pns->sendToNetworkLayer(SENDER, sendpkt);	//调用模拟网络环境的sendToNetworkLayer，通过网络层发送确认报文到对方

            if(packet.seqnum == rcvbase){//收到base,呈递base及之后的连续packet
                int tail = rcvbase;
                while(flag[tail++]);//找连续的已缓存的长度
                for(int i=rcvbase; i<tail; i++){
                    //取出Message，向上递交给应用层
                    Message msg;
                    memcpy(msg.data, packet.payload, sizeof(rcvpkt[i].payload));
                    pns->delivertoAppLayer(RECEIVER, msg);
                }
                rcvbase=tail;
            } else {//无序缓存


                rcvpkt[packet.seqnum] = packet;
                flag[packet.seqnum] = true;
            }

        }
        else if(packet.seqnum>=rcvbase-N){//在上次的窗口内,再发送一次ACK
            //发送对应的ack 这段代码好像重复了
            sendpkt.acknum = packet.seqnum;
            sendpkt.checksum = pUtils->calculateCheckSum(sendpkt);
            pUtils->printPacket("接收方发送确认报文", sendpkt);
            pns->sendToNetworkLayer(SENDER, sendpkt);	//调用模拟网络环境的sendToNetworkLayer，通过网络层发送确认报文到对方
        }

    }


}

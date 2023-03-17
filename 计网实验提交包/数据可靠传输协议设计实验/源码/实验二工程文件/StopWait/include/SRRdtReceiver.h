//
// Created by 26557 on 2022/11/17.
//

#ifndef STOPWAIT_SRRDTRECEIVER_H
#define STOPWAIT_SRRDTRECEIVER_H
#include "RdtReceiver.h"

class SRRdtReceiver : public RdtReceiver {
    private:
        int expectSequenceNumberRcvd=1;	// 期待收到的下一个报文序号
        Packet sendpkt;
        Packet rcvpkt[1000];
        bool flag[1000] = {false}; //表示已经收到
        int rcvbase = 0;
        const int N = 4;


    public:
        SRRdtReceiver();
        virtual ~SRRdtReceiver();

    public:
        void receive(const Packet &packet);	//接收报文，将被NetworkService调用
};


#endif //STOPWAIT_SRRDTRECEIVER_H

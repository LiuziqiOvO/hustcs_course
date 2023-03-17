#include "RdtReceiver.h"
class GBNRdtReceiver :public RdtReceiver
{
private:
    int expectSequenceNumberRcvd=0;	// 期待收到的下一个报文序号
    Packet sendpkt;				//

public:
    GBNRdtReceiver();
    virtual ~GBNRdtReceiver();

public:
    void receive(const Packet &packet);	//接收报文，将被NetworkService调用
};



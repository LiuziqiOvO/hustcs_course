#include "RdtReceiver.h"
class TCPRdtReceiver :public RdtReceiver
{
private:
    int expectSequenceNumberRcvd=1;	// 期待收到的下一个报文序号
    Packet sendpkt;				//

public:
    TCPRdtReceiver();
    virtual ~TCPRdtReceiver();

public:
    void receive(const Packet &packet);	//接收报文，将被NetworkService调用
};



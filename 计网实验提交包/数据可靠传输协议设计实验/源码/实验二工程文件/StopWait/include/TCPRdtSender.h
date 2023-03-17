#include "RdtSender.h"
class TCPRdtSender :public RdtSender
{
private:
    int nextseqnum=1;	// 下一个发送序号
    bool waitingState;	// 是否处于等待Ack的状态
    static const int N=50; //窗口长度N
    Packet sndpkt[1000];
    int base=0;
    int cnt[1000]={0};  //快速重传计数器

public:
    bool getWaitingState();
    bool send(const Message &message);
    //发送应用层下来的Message，由NetworkServiceSimulator调用,如果发送方成功地将Message发送到网络层，返回true;如果因为发送方处于等待正确确认状态而拒绝发送Message，则返回false
    void receive(const Packet &ackPkt);						//接受确认Ack，将被NetworkServiceSimulator调用
    void timeoutHandler(int seqNum);					//Timeout handler，将被NetworkServiceSimulator调用

public:
    TCPRdtSender();
    virtual ~TCPRdtSender();
};
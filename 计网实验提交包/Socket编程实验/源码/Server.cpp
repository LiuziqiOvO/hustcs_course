/*
 * @Author: pingyong-647 1021578619@qq.com
 * @Date: 2022-11-01 22:32:34
 * @LastEditors: LiuziqiOvO 1021578619@qq.com
 * @LastEditTime: 2022-12-31 00:52:09
 * @Description: 
 *
 */

#define  _CRT_SECURE_NO_WARNINGS
#define  _WINSOCK_DEPRECATED_NO_WARNINGS
#include <winsock2.h>
#include <cstdio>
#include <iostream>
#include <fstream>
#include <regex>
#include <sstream>

using namespace std;
#pragma comment(lib,"ws2_32.lib")

string ROOTPATH = "D:\\MyFile\\code\\vs\\repos\\MyServer";

int main() {
    WSADATA wsaData;
    int nRc = WSAStartup(0x0202, &wsaData);
    if (nRc) {
        printf("Winsock startup failed with error!\n");
    }

    if (wsaData.wVersion != 0x0202) {
        printf("Winsock version is not correct!\n");
    }
    printf("Winsock startup Ok!\n");
    SOCKET srvSocket;//监听socket
    sockaddr_in addr;//服务器地址
    SOCKET sessionSocket;//会话socket，负责和client进程通信
    int addrLen;//ip地址长度
    //创建监听socket
    srvSocket = socket(AF_INET, SOCK_STREAM, 0);
    if (srvSocket == INVALID_SOCKET)
        printf("\nSocket create Error!\n");

    //!配置服务器的端口和地址
    int port = 5050;
    char server_addr[40] = "127.0.0.1";
//    printf("port:");
//    scanf("%d",&port);
//    printf("server_addr:");
//    scanf("%s",server_addr);
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);//!端口号
    addr.sin_addr.S_un.S_addr = (ULONG) inet_addr(server_addr);
    /*成功地创建了一个后，用 bind 函数将 SOCKET 和主机地址绑定。*/
    int rtn = bind(srvSocket, (LPSOCKADDR) &addr, sizeof(addr));
    if (rtn != SOCKET_ERROR)
        printf("\nSocket bind Ok!\n");

    //监听
    /*对于服务器的程序，当申请到SOCKET, 并将通信对象指定为 server_addr 之后，就应该等待一个客户机的程序来要求连接， listen 函数就是把一个 SOCKET 设置为这个状态。*/
    rtn = listen(srvSocket, 5);//最多5个连接
    if (rtn != SOCKET_ERROR)
        printf("\nSocket listening!\n");

    sockaddr_in clientAddr;//客户端地址
    clientAddr.sin_family = AF_INET;
    addrLen = sizeof(clientAddr);


    u_long blockMode = 1;//将srvSock设为非阻塞模式以监听客户连接请求
    //调用ioctlsocket，将srvSocket改为非阻塞模式,
    //改成反复检查fd_set元素的状态，看每个元素对应的句柄是否可读或可写
    if ((rtn = ioctlsocket(srvSocket, FIONBIO, &blockMode) == SOCKET_ERROR)) { //FIONBIO：允许或禁止套接口s的非阻塞模式。
        cout << "ioctlsocket() failed with error!\n";
        return -1;
    }
    // cout << "ioctlsocket() for server socket ok!	Waiting for client connection and data\n";

    bool first_connetion = true;
    fd_set rfds;
    fd_set wfds;
    while (true) {
        //清空rfds和wfds数组
        FD_ZERO(&rfds);
        FD_ZERO(&wfds);

        //将srvSocket加入rfds数组,使其可读,即设置等待客户连接请求
        FD_SET(srvSocket, &rfds);
        //非第一次连接,会话Socket(SessionSocket)可读写
        if (!first_connetion) {//如果first_connetion为true，sessionSocket还没有产生
            //即：当客户端发送数据过来时，rfds数组里sessionSocket的对应的状态为可读；当可以发送数据到客户端时，wfds数组里sessionSocket的对应的状态为可写
            //设置等待会话SOKCET可接受数据或可发送数据
            if (sessionSocket != INVALID_SOCKET) { //如果sessionSocket是有效的
                FD_SET(sessionSocket, &rfds);
                FD_SET(sessionSocket, &wfds);
            }
        }
        //开始等待，等待rfds里是否有输入事件，wfds里是否有可写事件
        int nTotal = select(0, &rfds, &wfds, NULL, NULL);//返回rfds,wfds总共可以读或写的句柄个数

        //如果srvSock收到连接请求，接受客户连接请求
        if (FD_ISSET(srvSocket, &rfds)) {
            nTotal--;   //因为客户端请求到来也算可读事件，因此-1，剩下的就是真正有可读事件的句柄个数（即有多少个socket收到了数据）

            //产生会话SOCKET
            sessionSocket = accept(srvSocket, (LPSOCKADDR) &clientAddr, &addrLen);
            if (sessionSocket != INVALID_SOCKET)
                printf("\nSocket listen one client request!\n");
            std::cout << "request IP:" << (int)clientAddr.sin_addr.S_un.S_un_b.s_b1 << "." << (int)clientAddr.sin_addr.S_un.S_un_b.s_b2 << "." << (int)clientAddr.sin_addr.S_un.S_un_b.s_b3 << "." << (int)clientAddr.sin_addr.S_un.S_un_b.s_b4;
            std::cout << "\nrequest Port:" << clientAddr.sin_port << "\n";
            //把会话SOCKET设为非阻塞模式
            if ((rtn = ioctlsocket(sessionSocket, FIONBIO, &blockMode) == SOCKET_ERROR)) { //FIONBIO：允许或禁止套接口s的非阻塞模式。
                    cout << "ioctlsocket() failed with error!\n";
                    //return -1;
            }
            // cout << "ioctlsocket() for session socket OK, Waiting for client connection and data\n";
            //设置等待会话SOKCET可接受数据或可发送数据
            FD_SET(sessionSocket, &rfds);
            FD_SET(sessionSocket, &wfds);

            first_connetion = false;
        }

        //检查会话SOCKET是否有数据到来
        if (nTotal > 0) {//仍有可读handle,会话SOCKET有数据到来,则接受客户的数据
            if (FD_ISSET(sessionSocket, &rfds)) {
                //receiving data from client
                char *recvBuf = (char *) malloc(1024 * sizeof(char));
                memset(recvBuf, '\0', 1024);
                rtn = recv(sessionSocket, recvBuf, 1024, 0);
                if (rtn > 0) {
                    printf("Received %d bytes from client:\n %s \n", rtn, recvBuf);

                    //!解析HTTP报文
                    smatch str_match;
                    regex re("^([A-Z]+) (.+) HTTP/1");//正则,匹配请求报文的请求行;
                    //regex regulation("([A-Za-z]+) +(.*) +(HTTP/[0-9][.][0-9])")
                    string str(recvBuf); //被查
                    rtn = regex_search(str, str_match, re);
                    if (!rtn) {
                        std::cout << "request message exception\n";
                        closesocket(sessionSocket);
                        return -1;
                    } else {
                        string msg_get = str_match[1];
                        string msg_url = str_match[2];//即第二行Host: 127.0.0.1:5050/index.html
                        smatch filetype;
//                        regex re2("\\..*");
//                        rtn = regex_search(msg_url, filetype, re);//正则出index.html
//                        if (rtn == 0){
//                            std::cout << msg_get + msg_url+"FORMAT ERROR\n";
//                            closesocket(sessionSocket);
//                            return -1;
//                        } else
                        std::ifstream fin(ROOTPATH + msg_url, std::ios::binary);
                        if (!fin) {//没有找到文件

                            std::stringstream re_msg0;
                            re_msg0 << "HTTP/1.1 404 Not Found\r\n" << "Connection:close\r\n" << "Server:Lzq_Server\r\n"
                                   << "\r\n\r\n"<<"404 FILE NOT FOUND";
                            string re_msg_str = re_msg0.str();
                            const char *re_msg_char = re_msg_str.c_str();
                            rtn = send(sessionSocket, re_msg_char, strlen(re_msg_char), 0);
                            std::cout << msg_url + "NOT FOUND";
                            closesocket(sessionSocket);
                            //return -1;
                        } else {//找到了文件
                            filebuf *tmp = fin.rdbuf();
                            int size = tmp->pubseekoff(0, fin.end, fin.in);//
                            tmp->pubseekpos(0, fin.in);//

                            char *buffer = new char[size];//临时存File
                            char *tail = buffer + size;//buffer的尾部
                            tmp->sgetn(buffer, size);
                            fin.close();

                            //组装响应报文 re_msg
                            string Content_Type = "image/jpg";
                            std::stringstream re_msg;
                            re_msg << "HTTP/1.1 200 OK\r\n" << "Connection:close\r\n" << "Server:Lzq_Server\r\n"
                                   << "Content Length:" << size
                                   << "\r\n" << "Content Type:" + Content_Type << "\r\n\r\n";
                            string re_msg_str = re_msg.str();
                            const char *re_msg_char = re_msg_str.c_str();
                            rtn = send(sessionSocket, re_msg_char, strlen(re_msg_char), 0);
                            while (buffer < tail) {
                                rtn = send(sessionSocket, buffer, size, 0);
                                buffer += rtn;
                                size -= rtn;
                            }
                            closesocket(sessionSocket);
                        }
                    }

                } else { //否则是收到了客户端断开连接的请求，也算可读事件。但是这种情况下FD_ISSET(sessionSocket, &rfds)返回false //!
                    printf("Client leaving ...\n");
                    closesocket(sessionSocket);  //既然client离开了，就关闭sessionSocket
                    nTotal--;    //因为客户端离开也属于可读事件，所以需要-1
                    sessionSocket = INVALID_SOCKET; //把sessionSocket设为INVALID_SOCKET
                }
            }
        }
    }
}

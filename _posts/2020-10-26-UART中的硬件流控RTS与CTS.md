---
layout: post
categories: tech
title: UART中的硬件流控RTS与CTS
typora-root-url: ../
---
## UART中的硬件流控RTS与CTS

```shell
硬流控的RTS、CTS：
RTS （Require ToSend，发送请求）为输出信号，用于指示本设备准备好可接收数据，低电平有效，低电平说明本设备可以接收数据。
CTS （Clear ToSend，发送允许）为输入信号，用于判断是否可以向对方发送数据，低电平有效，低电平说明本设备可以向对方发送数据。
```

```C
AP与MODEM的流控这样通信的：
AP串口可用时，将AP-RTS拉低，MODEM-CTS检测到AP-RTS为低，知道AP串口已准备好，可以发送数据；
AP串口不可用时，将AP-RTS拉高，MODEM-CTS检测到AP-RTS为高，知道AP串口还未准备好，就不会放数据。
```



- #### Ref:

	- [UART中的硬件流控RTS与CTS](https://blog.csdn.net/XiaoXiaoPengBo/article/details/50588154)


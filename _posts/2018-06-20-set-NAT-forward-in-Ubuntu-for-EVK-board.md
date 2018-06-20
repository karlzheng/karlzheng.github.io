---
layout: post
categories: tech
title: set NAT forward in Ubuntu for EVK board
---
## set NAT forward in Ubuntu for EVK board

```
sudo iptables -P INPUT ACCEPT
sudo iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
sudo iptables -nvL -t nat
```



```
route del -net 0.0.0.0 gw 192.168.1.1
route add -net 0.0.0.0 gw 192.168.1.9
```



```
vi /etc/resolv.conf
nameserver 8.8.8.8
nameserver 8.8.4.4
```


---
layout: post
categories: tech
title: display Hardware info of Mac
typora-root-url: ../
---
## display Hardware info of Mac

```shell
ioreg -lp IOUSB
```



- ##### Ref:

	- [https://superuser.com/questions/883053/mac-os-x-equivalent-of-udevadm-info-a-n-dev-ttyacm0](https://superuser.com/questions/883053/mac-os-x-equivalent-of-udevadm-info-a-n-dev-ttyacm0)
	- [https://apple.stackexchange.com/questions/242104/is-there-a-way-to-access-a-usb-serial-port-by-the-device-id-not-by-the-tty-po](https://apple.stackexchange.com/questions/242104/is-there-a-way-to-access-a-usb-serial-port-by-the-device-id-not-by-the-tty-po)
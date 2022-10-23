---
layout: post
categories: tech
title: run esp32 console on Macbook
typora-root-url: ../
---
## run esp32 console on Macbook

```bash
esptool.py --chip esp32 --port /dev/tty.wchusbserial54D80183381 erase_flash
esptool.py --chip esp32 --port /dev/tty.wchusbserial54D80183381 --baud 460800 write_flash -z 0x1000 esp32-20220618-v1.19.1.bin
source ~/.platformio/penv/bin/activate
#pio device monitor -b $((115200*4)) 
pio device monitor -b 115200
```


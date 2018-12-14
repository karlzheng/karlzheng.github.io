---
layout: post
categories: tech
title: AliOS下载Firware到ESP8266
---
## AliOS下载Firware到ESP8266

```shell
/esptool.py --chip esp8266 --port /dev/ttyUSB0 --baud 115200 write_flash --flash_mode dio --flash_size detect 0x0 /media/karlzheng/prog/linkcm/iot/AliOS-Things/platform/mcu/esp8266/bsp/boot_v1.7_921600.bin 0x3fc000 /media/karlzheng/prog/linkcm/iot/AliOS-Things/platform/mcu/esp8266/bsp/esp_init_data_default.bin 0x3fe000 /media/karlzheng/prog/linkcm/iot/AliOS-Things/platform/mcu/esp8266/bsp/blank.bin 0x1000 /media/karlzheng/prog/linkcm/iot/AliOS-Things/out/helloworld@esp8266/binary/helloworld@esp8266.bin
```


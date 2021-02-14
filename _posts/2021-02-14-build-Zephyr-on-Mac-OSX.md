---
layout: post
categories: tech
title: build Zephyr on Mac OSX
typora-root-url: ../
---
## build Zephyr on Mac OSX

```shell
brew install gcc-arm-embedded

export ZEPHYR_TOOLCHAIN_VARIANT=gnuarmemb
export GNUARMEMB_TOOLCHAIN_PATH=/usr/local/
```



#### Ref:

- [Installing Zephyr (OSX)](https://learn.adafruit.com/blinking-led-with-zephyr-rtos/installing-zephyr-osx)


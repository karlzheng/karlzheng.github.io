---
layout: post
categories: tech
title: add I2C slave for ESP32
typora-root-url: ../
---
## add I2C slave for ESP32

```bash
pio pkg install --library "ayashki/ESP32 I2C Slave@^0.1.0"
```
```makefile
[env:esp32dev]
upload_port = /dev/cu.wchusbserial54D80183381
platform = https://github.com/platformio/platform-espressif32.git#feature/arduino-idf-master
board = esp32dev
framework = arduino
lib_deps = ayashki/ESP32 I2C Slave@^0.1.0
; platform_packages = framework-arduinoespressif32 @ https://github.com/espressif/arduino-esp32.git#2.0.1
```
```c
#include <Arduino.h>
#include <Wire.h>
#include <WireSlave.h>

#define SDA_PIN 21
#define SCL_PIN 22
#define I2C_SLAVE_ADDR 0x04

void receiveEvent(int howMany);

void setup()
{
    Serial.begin(115200);

    bool success = WireSlave.begin(SDA_PIN, SCL_PIN, I2C_SLAVE_ADDR);
    if (!success) {
        Serial.println("I2C slave init failed");
        while(1) delay(100);
    }

    WireSlave.onReceive(receiveEvent);
}

void loop()
{
    // the slave response time is directly related to how often
    // this update() method is called, so avoid using long delays
    // inside loop(), and be careful with time-consuming tasks
    WireSlave.update();

    // let I2C and other ESP32 peripherals interrupts work
    delay(1);
}

// function that executes whenever a complete and valid packet
// is received from master
// this function is registered as an event, see setup()
void receiveEvent(int howMany)
{
    while (1 < WireSlave.available()) // loop through all but the last byte
    {
        char c = WireSlave.read();  // receive byte as a character
        Serial.print(c);            // print the character
    }

    int x = WireSlave.read();   // receive byte as an integer
    Serial.println(x);          // print the integer
}
```



#### Ref:

- [https://registry.platformio.org/libraries/ayashki/ESP32%20I2C%20Slave/installation](https://registry.platformio.org/libraries/ayashki/ESP32%20I2C%20Slave/installation)

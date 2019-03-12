---
layout: post
categories: tech
title: Java_Debug_Command_Line
typora-root-url: ../
---
## Java_Debug_Command_Line

```shell
javadebug () 
{ 
    if [ $# -eq 1 ]; then
        java -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=9999 -server -jar $1;
    else
        if [ $# -eq 2 ]; then
            java -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=$2 -server -jar $1;
        fi;
    fi
}
```


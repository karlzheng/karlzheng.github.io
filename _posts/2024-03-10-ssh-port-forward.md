---
layout: post
categories: tech
title: ssh port forward
typora-root-url: ../
---
## ssh port forward

-   Refer to https://blog.csdn.net/LngZd/article/details/107165682 , it is easy to understand the ssh port forward from local forward to remote forward, as following picture shown:

-   ```shell
    ssh -L 8083:169.254.0.2:8083 d1 -N
    ```

-   ![image-20240310113825160](./_posts/images/image-20240310113825160.png)

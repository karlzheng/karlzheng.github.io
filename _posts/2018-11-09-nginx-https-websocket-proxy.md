---
layout: post
categories: tech
title: nginx https websocket proxy
---
## nginx https websocket proxy

```
vi /etc/nginx/conf.d/https.conf
```



```
    server {
        listen 443;
        server_name xx.ioter.top
        ssl on; 
        ssl_certificate /etc/nginx/xxiot.crt;
        ssl_certificate_key /etc/nginx/xxiot.key;
        ssl_session_timeout 5m; 
        ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:XXXXXXXX;
        ssl_prefer_server_ciphers on; 
        location / { 
            proxy_store off;
            proxy_redirect off;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header Host $http_host;
            proxy_http_version 1.1;
            proxy_set_header x-scheme true;
            proxy_set_header Connection ""; 
            proxy_pass http://127.0.0.1:12345;
            # WebSocket support (nginx 1.4)
            proxy_set_header Upgrade $http_upgrade;
            proxy_set_header Connection "upgrade";
        }   
    } 
```

[Ref]

[https://github.com/nicokaiser/nginx-websocket-proxy/blob/master/simple-wss.conf](https://github.com/nicokaiser/nginx-websocket-proxy/blob/master/simple-wss.conf)


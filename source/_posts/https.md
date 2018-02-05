---
title: https配置
date: 2018-02-05 15:22:59
categories:
  - html
tags:
  - https
  - html
author:
  nick: zmc
  link: https://www.zhoumengcheng.cn
cover: https://images.zhoumengcheng.cn/https.jpg
subtitle: 现在的人越来越重视数据保密和网络安全，但http协议有一个缺陷，它在传输过程中的数据包是明文的，这对于数据保密的操作来说，是致命的
---

> 现在的人越来越重视数据保密和网络安全，但http协议有一个缺陷，它在传输过程中的数据包是明文的，这对于数据保密的操作来说，是致命的。在这种情况下，很多网站开始使用https进行超文本传输。

HTTPS： 简单来说是HTTP的安全版。即HTTP下加入SSL层。通俗的来说，https就是加密版的http。

*https配置：*
```
server_name  www.yuming.com;
ssl_protocols TLSv1.2 TLSv1.1 TLSv1;
ssl_certificate /etc/ssl/yourdomain.com.crt;   // 证书放置的位置
ssl_certificate_key /etc/ssl/yourdomain.com.key;  //同上
ssl_prefer_server_ciphers on;

# 自动跳转https（可选）
if ($server_port = 80) {
    rewrite ^(.*)$ https://$host$1 permanent;
}

```


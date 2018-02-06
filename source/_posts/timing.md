---
title: linux下定时删除n天前的记录文件
date: 2018-02-06 08:57:27
tags:
  - linux
categories:
  - linux文章
author:
  nick: zmc
  link: https://www.zhoumengcheng.cn
subtitle: 如何定时删除linux下n天前的记录文件
---

如何定时删除服务器上的临时文件，linux下有个crontab工具，用来执行定时任务；

开启crontab服务： ``/sbin/service start crontab;``

创建crontab定时任务：``crontab -e``或者创建 xxx.cron后缀文件然后使用：``crontab xxx.cron``

### 删除文件写法：* * * * * find 要删除的目录路径 -mtime +天数 -name 文件名 -exec rm -rf {} \;

例如：* 6 * * * find /root/home/zhang ctime 1 -exec rm -rf {} \;

表示每天早上六点删除/root/home/zhang目录下一天前创建的所有文件，包括文件夹zhang

第一个号表示时间中的分钟 取值：0-59；

第二个号表示时间中的小时 取值：0-23；

第三个号表示是一个月中的第几天，取值： 1-31；

第四个号表示是一年中的第几个月，取值：1-12；

第五个*号表示一个星期中的第几天，取值：0-7（0,7都表示星期天）

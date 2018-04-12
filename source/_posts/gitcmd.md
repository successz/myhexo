---
title: git命令详解
date: 2018-01-23 10:33:26
categories:
  - linux文章
tags: 
  - git
  - linux
author:
  nick: zmc
  link: https://www.zhoumengcheng.cn
cover: https://images.zhoumengcheng.cn/timg.jpg
subtitle: Git是目前世界上最先进的分布式版本控制系统（没有之一）。Git有什么特点？简单来说就是：高端大气上档次！
---
## git原理图

![git原理图](https://images.zhoumengcheng.cn/bg2015120901.png)

### **git与github绑定**

```bash
# 创建SSH KEY
$ ssh-keygen -t rsa -C "xxxxxx.@qq.com"
```
在用户主目录找到.ssh目录，里面有``id_rsa``和``id_rsa.pub``,将``id_rsa.pub``的内容复制到github中
登录github在设置里找到ssh key添加ssh key将``id_rsa.pub``的内容复制到这里来
第一次可以使用``git push -u origin master``命令将本地仓库推送到master分支，还会把本地master分支和远程的master分支关联起来，以后的推送和拉取就可以简化命令。


### 常用git命令

```bash
# 在当前目录新建一个Git代码库 
$ git init

# 新建一个目录，将其初始化
$ git init [project]

# 下载一个项目
$ git clone [url]

# 增加一个新的远程仓库，并命名
$ git remote add git@github.com/xxxxx

# 添加文件到暂存区
$ git add .

# 提交暂存区到仓库区
$ git commit m "说明"

# 显示有变更的文件
$ git status

# 推送当前分支到远程仓库
$ git push origin master

# 下载远程仓库，注意与pull的区别
$ git fetch origin master:temp

# 取回远程仓库，并与本地分支合并, 注意与fetch的区别
$ git pull origin master

# 删除暂存区或分支上的的文件，但本地又需要使用（--cached）,可以使用
$ git rm --cached file_path

```

## **关于分支的命令**
```bash
# 列出所有本地分支
$ git branch

# 列出所有远程分支
$ git branch -r

# 列出所有本地分支和远程分支
$ git branch -a 

# 新建一个分支
$ git branch [branch-name]

# 切换到指定分区，并更新工作区
$ git checkout [branch-name]

# 合并指定分支到当前分支，建议使用git rebase,注意与git merge的区别
$ git rebase  [branch-name]

# 删除分支
$ git branch -d [branch-name]

# 删除远程分支
$ git push origin --delete [branch-name]

```




 
  
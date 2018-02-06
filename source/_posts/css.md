---
title: 经常会用的CSS知识
date: 2018-02-06 10:26:23
tags:
  - css
categories:
  - css
author:
  nick: zmc
  link: https://www.zhoumengcheng.cn
cover: https://images.zhoumengcheng.cn/0180206103014.jpg
subtitle: 日常会用到的css小知识，记录一下！！！
---

### 常用meta标签
```html
<meta name="viewport" content="width=device-width,user-scalable=0,,target-densitydpi=device-dpi">
<meta name="keywords" content="">
<meta name="description" content="">
```

### 取消点击高亮背景
```html
<style>
-webkit-tap-highlight-color: rgba(255,255,255,0);
</style>
```

### css3动画在安卓手机上卡爆的问题
*开启硬件加速*
```html
-webkit-backface-visibility: hidden;
```

### css实现垂直居中的几种方法

> 表格方法

```html
<div class="box_center">
    <div class="inner"></div>
</div>
.box_center {
    display: table-cell;
    width: 300px;
    height: 300px;
    text-align: center;
    vertical-align: middle;
}
.box_center .inner {
    display: inline-block;
}
```

> 利用空元素占位实现

```html
<div class="box_center">
    <div class="placeholder"></div>
    <div class="inner"></div>
</div>

.box_center {
    width: 300px;
    height: 300px;
    text-align: center;
    font-size:0;
}
.box_center .inner {
    display: inline-block;
    vertical-align: middle;
}
.box_center .placeholder {
    display: inline-block;
    width: 0;
    height: 100%;
    vertical-align: middle;
}
```

> 绝对定位

```html
.Absolute-Center {  
  margin: auto;  
  position: absolute;  
  top: 0; left: 0; bottom: 0; right: 0;  
}  
```
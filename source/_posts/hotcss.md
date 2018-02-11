---
title: hotcss
date: 2018-02-11 10:32:55
tags:
  - js
categories:
  - css
  - js
author: 
  nick: zmc
  link: https://www.zhoumengcheng.cn
cover: https://images.zhoumengcheng.cn/hotcss.jpg
subtitle: hotcss不是一个库，也不是一个框架。它是一个移动端布局开发解决方案。使用hotcss可以让移动端布局开发更容易
---

## hotcss
*让移动端布局开发更加容易*


网址：[点击进入](https://github.com/imochen/hotcss)

### 用法

```html
<script src="/path/to/hotcss.js"></script>
```
#### \*hotcss.js必须在其他加载前加载，不能异步加载

### css写法

*推荐使用scss来编写css，在scss的头部使用`import`将`px2rem`导入*

```js
@import '/path/to/px2rem.scss'; 
```

如果你的项目是单一尺寸，需要定义全局变量，在px2rem.scss文件中定义全局的`designWidth`;

```js
@function px2rem($px){
    @return $px*320/$designWidth/20 + rem;
} 
$designWidth: 750;
```

如果是多尺寸，需要在业务scss中单独定义：
```js
@import '/path/to/px2rem.scss';
$designWidth: 750;
```
$designWidth必须要在使用px2rem前定义。否则scss编译会出错。

注意：如果使用less，则需要引入less-plugin-functions，普通的less编译工具无法正常编译。


更多参考：https://github.com/imochen/hotcss
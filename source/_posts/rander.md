---
title: JS 取得一个区间的随机整数
date: 2018-02-06 11:59:36
tags:
  - js
categories:
  - js
author:
  nick: zmc
  link: https://www.zhoumengcheng.cn
cover: https://images.zhoumengcheng.cn/16551213.jpg
subtitle: JS 取得一个区间的随机整数
---

> 生成随机数的公式

```js
function rand(n, m){
        var random = Math.floor(Math.random()*(m-n+1)+n);
        return random;
}
```

> 如果你希望生成任意值到任意值（也就是指定范围内）的随机数

```js
// max - 期望的最大值 min - 期望的最小值
Math.floor(Math.random()*(max-min+1)+min);
```

>生成[0,max]到任意数的随机数

```js
// max - 期望的最大值
parseInt(Math.random()*(max+1),10);
Math.floor(Math.random()*(max+1));
```

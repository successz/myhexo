---
title: JS 中不容易分清的 slice,splice 和 split 三个函数
date: 2018-02-06 11:33:50
tags:
  - js
categories:
  - js
cover: https://images.zhoumengcheng.cn/80206114439.jpg
author:
  nick: zmc
  link: https://www.zhoumengcheng.cn
subtitle: 很多次见到这三个函数，都会有点搞不清楚，一定要查一下资料。做个笔记记录一下
---

很多次见到这三个函数，都会有点搞不清楚，一定要查一下资料。做个笔记记录一下：

----------------------------------数组----------------------------------------------

`slice`（数组）

用法：

```js
array.slice(start, end);
```
解释：该方法是对数组部分截取，并返回一个数组副本；参数start是截取的开始数组索引，end参数等于你要取的最后一个字的位置值加上1（可选）；

`splice`(数组)

用法： 
```js
array.aplice(start, deleteCount,item1,.....,itemX);
```

解释：splice方法从array中移除一个或多个数组，并用新的item替换他们。参数start是从数组array中移除元素的开始位置。参数deleteCount是要移除元素的个，如果设置为0，则不会删除项目。


----------------------------------字符串---------------------------------------------

`slice`（字符串）

用法：
```js
string.slice(start, end);
```

解释：slice方法复制string的一部分来构造一个新的字符串，用法与参数匀和数组的slice方法一样;end参数等于你要取的最后一个字符的位置值加上1

`split`（字符串）

用法：
```js
string.split(separator,limit);
```

解释：split方法把这个string分割成片段来创建一个字符串数组。可选参数limit可以限制被分割的片段数量。separator参数可以是一个字符串或一个正则表达式。如果separator是一个空字符，会返回一个单字符的数组。
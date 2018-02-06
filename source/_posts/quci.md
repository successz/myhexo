---
title: js屏幕取词
date: 2018-02-06 10:36:57
tags:
  - js
categories:
  - js
author:
  nick: zmc
  link: https://www.zhoumengcheng.cn
cover: https://images.zhoumengcheng.cn/1548456.jpg
subtitle: 最近在了解关于富文本编辑器的资料时，看到有一个关于屏幕取词的内容
---

最近在了解关于富文本编辑器的资料时，看到有一个关于屏幕取词的内容

IE9以下支持：`document.selection`

IE9、Firefox、Safari、Chrome和Opera支持：`window.getSelection()`

应用：

>屏幕取词

```js
function getWord () {
  var word = window.getSelection?window.getSelection():document.selection.createRange().text();
  alert(word);
}
document.body.addEventListener('click', getWord, false);
```

>移除选中的内容

```js
function removeWord () {
  window.getSelection?window.getSelection().removeAllRanges():document.selection.empty();
}
document.body.addEventListener('click', removeWord, false);
```

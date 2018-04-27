---
title: 获取元素的最终 background-color
date: 2018-3-21 20:16:36
tags:
  - css
  - js
categorise:
  - js
author:
  nick: zmc
  link:  https://www.zhoumengcheng.cn
cover: https://images.zhoumengcheng.cn/jsript.jpg
subtitle: 对网页进行调试的过程中，经常会用到js来获取元素的CSS样式，方法有很多很多
---

JS中使用document.defaultView.getComputedStyle()、currentStyle()方法获取CSS属性值
在对网页进行调试的过程中，经常会用到js来获取元素的CSS样式，方法有很多很多,总结如下：

1. obj.style：这个方法只能JS只能获取写在html标签中的写在style属性中的值（style=”…”），而无法获取定义在`<style type="text/css">`里面的属性。

```html
<html xmlns=”http://www.w3.org/1999/xhtml“> 
<head> 
<meta http-equiv=”Content-Type” content=”text/html; charset=utf-8″ /> 
<title>JS获取CSS属性值</title> 
<style type=”text/css”> 
<!– 
.ss{color:#cdcdcd;} 
–> 
</style> 
</head> 

<body> 
<div id=”css88″ class=”ss” style=”width:200px; height:200px; background:#333333″>JS获取CSS属性值</div> 
<script type=”text/javascript”> 
alert(document.getElementById(“css88″).style.width);//200px 
alert(document.getElementById(“css88″).style.color);//空白 
</script> 
</body> 
</html>
```

2. IE中使用的是obj.currentStyle方法，而FF是用的是getComputedStyle 方法 

“DOM2级样式”增强了document.defaultView，提供了getComputedStyle()方法。这个方法接受两个参数：要取得计算样式的元素和一个伪元素字符串（例如“:after”）。如果不需要伪元素信息，第二个参数可以是null。getComputerStyle()方法返回一个CSSStyleDeclaration对象，其中包含当前元素的所有计算的样式。

其语法为：document.defaultView.getComputedStyle('元素', '伪类')；

以下面的HTML页面为例：

```html
<!DOCTYPE html>
<html>
<head>
<title>计算元素样式</title>
<style>
#myDiv {
background-color:blue;
width:100px;
height:200px;
}
</style>
</head>
<body>
<div id ="myDiv" style="background-color:red; border:1px solid black"></div>
<script>
var myDiv = document.getElementById("myDiv");
var computedStyle = document.defaultView.getComputedStyle(myDiv, null);
alert(computedStyle.backgroundColor); //"red"
</script>
</body>
</html>
```

边框属性可能也不会返回样式表中实际的border规则（Opera会返回，但其它浏览器不会）。存在这个差别的原因是不同浏览器解释综合属性的方式不同，因为设置这种属性实际上会涉及很多其他的属性。在设置border时，实际上是设置了四个边的边框宽度、颜色、样式属性。因此，即使computedStyle.border不会在所有浏览器中都返回值，但computedStyle.borderLeftWidth则会返回值。 

需要注意的是，即使有些浏览器支持这种功能，但表示值的方式可能会有所区别。例如，Firefox和Safari会返回将所有颜色转换成RGB格式。因此，即使getComputedStyle()方法时，最好多在几种浏览器中测试一下。 

IE不支持getComputedStyle()方法，但它有一种类似的概念。在IE中，每个具有style属性的元素还有一个currentStyle属性。这个属性是CSSStyleDeclaration的实例，包含当前元素全部计算后的样式。取得这些样式的方法差不多，如下： 
```js
var myDiv = document.getElementById("myDiv"); 
var computedStyle = myDiv.currentStyle; 
alert(computedStyle.backgroundColor); //"red"
```
总结一下：通过document.defaultView.getComputedStyle()得到背景色，不同浏览器得到的不一样，可能会返回将所有颜色转换成RGB格式，也可能是颜色值。
IE通过currentStyle方法得到的颜色值没有将颜色转化成RGB格式。

> 最终获取特定元素的计算样式

```js
function getStyle(elem, property){
    if(elem || !property){
        return false;
    }
    
    var value = elem.style[property];
    var css;
    if(!value){
        if(document.defaultView && document.defaultView.getComputedStyle){
            css = document.defaultView.getComputedStyle(elem, null);
             value = css ? css.getPropertyValue(property) : null;
        }
    }
    return value;
}
```
以上是不考虑 `!important` 这种情况,因为优先级规则的计算，!important永远处在食物链的最顶层。
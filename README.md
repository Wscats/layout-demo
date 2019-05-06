## 页面结构布局


- [百分比布局](https://wscats.github.io/layout-demo/layout/百分比布局/demo)
- [弹性盒布局](https://wscats.github.io/layout-demo/layout/弹性盒布局/demo)
- [分栏布局](https://wscats.github.io/layout-demo/layout/%E5%88%86%E6%A0%8F%E5%B8%83%E5%B1%80/demo/)
- [响应式布局](https://wscats.github.io/layout-demo/layout/自适应布局%2B响应式布局/demo)  [文档](https://github.com/Wscats/layout-demo/blob/gh-pages/layout/自适应布局%2B响应式布局/doc/自适应布局与响应式布局.md)


## 单位

`px`单位的名称为像素，它是一个固定大小的单元，像素的计算是针对屏幕的，一个像素`1px`就是屏幕上的一个点，即屏幕分辨率的最小分割。由于它是固定大小的单位，单独用它来设计的网页，如果适应大屏幕电脑，在小屏幕手机上就会很不友好，做不到自适应的效果
- [px](https://wscats.github.io/layout-demo/layout/移动端布局/demo/px.html)

`em`单位的名称为相对长度单位，它是用来设置文本的字体尺寸的，它是相对于当前对象内文本的字体尺寸；如果没有人为设置当前对象内文本的字体尺寸，那么它相对的是浏览器默认的字体尺寸`16px`
- [em](https://wscats.github.io/layout-demo/layout/移动端布局/demo/em.html)

相对长度单位，它的出现是为了解决`em`的缺点，`em`可以说是相对于父级元素的字体大小，当父级元素字体大小改变时，又得重新计算。`rem`出现就可以解决这样的问题，`rem`只相对于根目录，即`HTML`元素。所以只要在`HTML`标签上设置字体大小，文档中的字体大小都会以此为参照标准，一般用于自适应布局
- [rem](https://wscats.github.io/layout-demo/layout/移动端布局/demo/rem.html)

`view height`和`view width`的简写，是指可视窗口的高度。假如高度是1200px的话。那10vh就是120px，即`1 vh = 1200px/100 = 12 px`
- [vw和vh](https://wscats.github.io/layout-demo/layout/移动端布局/demo/vw-vh.html)

总结：

- `px`是固定长度单位，不随其它元素的变化而变化
- `em`和`%`是相对于父级元素的单位，会随父级元素的属性`font-size`或其它属性变化而变化
- `rem`是相对于根目录`HTML`元素的，所有它会随`HTML`元素的属性`font-size`变化而变化
- `px`和`%`用的比较广泛一些，可以充当更多属性的单位，而`em`和`rem`是字体大小的单位，用于充当`font-size`属性的单位
- 一般来说：`1em = 1rem = 100% = 16 px`

## 视口

- [viewpoint](https://github.com/Wscats/iPhone-X)

> 移动设备上的`viewport`就是设备的屏幕上能用来显示我们的网页的那一块区域

* 布局视口（layout viewport）

以屏幕分辨率为基准，实际上布局视口的宽度要比屏幕宽出很多，以上图片显示的尺寸就是 layout viewport

* 视觉视口（visual viewport）

`layout viewport`的宽度是大于浏览器可视区域的宽度的，所以我们还需要一个`viewport`来代表 浏览器可视区域的大小，这个`viewport`叫做`visual viewport`。在`JS`中可以通过`window.innerWidth`来获取

* 理想视口（ideal viewport）

一个能完美适配移动设备的视口，需要手动添加`meta`标签，一般视口大小都设置为设备大小

```html
<meta name="viewport" content="width=device-width">
```

举个例子，手机上的浏览器是全屏的，手机实际宽度是320像素(即`visual viewport`)，而手机分辨率是980宽度(即`layout viewport`)，所以手机上打出来的是980而不是320，如果设置了`meta`完美适配设备(即`ideal viewport`)

* meta标签属性

> 利用以下属性对`viewport`进行控制, 可多个同时使用，并用逗号隔开

- `width`设置`layout viewport`的宽度，为一个正整数，或字符串`device-width`
- `initial-scale`设置页面的初始缩放值，为一个数字，可以带小数
- `minimum-scale`允许用户的最小缩放值，为一个数字，可以带小数
- `maximum-scale`允许用户的最大缩放值，为一个数字，可以带小数
- `user-scalable`是否允许用户进行缩放
    - no代表不允许
    - yes代表允许

所以如果不定义`viewpoint`的话，页面宽度以屏幕分辨率为基准，而设置以后可以根据设备宽度来调整页面，达到适配终端大小的效果

## 动态设置字体大小及viewport

```js
<script type="text/javascript">
    // 把尺寸放大N倍（N是window.devicePixelRatio）
    // 物理像素*设备像素比=真实像素
    var wd = document.documentElement.clientWidth*window.devicePixelRatio/10;
    document.getElementsByTagName("html")[0].style.fontSize = wd + "px";
    
    // 把屏幕的倍率缩小到N分之一（N是window.devicePixelRatio）
    var scale = 1/window.devicePixelRatio;
    var mstr = 'initial-scale='+ scale +', maximum-scale='+ scale +', minimum-scale='+ scale +', user-scalable=no';
    document.getElementById("vp").content = mstr;
</script>
```

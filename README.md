## 页面结构布局

- [百分比布局](https://wscats.github.io/layout-demo/layout/百分比布局/demo)
- [弹性盒布局](https://wscats.github.io/layout-demo/layout/弹性盒布局/demo)
- [分栏布局](https://wscats.github.io/layout-demo/layout/%E5%88%86%E6%A0%8F%E5%B8%83%E5%B1%80/demo/)
- [响应式布局](https://wscats.github.io/layout-demo/layout/自适应布局%2B响应式布局/demo)  [文档](https://github.com/Wscats/layout-demo/blob/gh-pages/layout/自适应布局%2B响应式布局/doc/自适应布局与响应式布局.md)


## 单位

- [em](https://wscats.github.io/layout-demo/layout/移动端布局/demo/em.html)
- [rem](https://wscats.github.io/layout-demo/layout/移动端布局/demo/rem.html)
- [px](https://wscats.github.io/layout-demo/layout/移动端布局/demo/px.html)
- [vw和vh](https://wscats.github.io/layout-demo/layout/移动端布局/demo/vw-vh.html)

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

* meta标签属性

> 利用以下属性对`viewport`进行控制, 可多个同时使用，并用逗号隔开

- `width`设置`layout viewport`的宽度，为一个正整数，或字符串`device-width`
- `initial-scale`设置页面的初始缩放值，为一个数字，可以带小数
- `minimum-scale`允许用户的最小缩放值，为一个数字，可以带小数
- `maximum-scale`允许用户的最大缩放值，为一个数字，可以带小数
- `user-scalable`是否允许用户进行缩放
    - no代表不允许
    - yes代表允许

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

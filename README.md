# JS_OC
JS与原生OC互相调用的Demo(持续更新中)。<br>
计划整理的JS与OC调用的系列包括：
* 1.在JS 中做一次URL跳转，然后在OC中拦截跳转。（这里分为UIWebView 和 WKWebView两种，去年因为还要兼容iOS 6，所以没办法只能采用UIWebView来做。）
* 2.利用WKWebView 的MessageHandler。
* 3.利用系统库JavaScriptCore，来做相互调用。（iOS 7推出的）
* 4.利用第三方库WebViewJavascriptBridge。
* 5.利用第三方cordova库，以前叫PhoneGap。（这是一个库平台的库）
* 6.当下盛行的React Native。

## JS_OC_summary
[JS_OC_summary](https://github.com/Haley-Wong/JS_OC/tree/master/JS_OC_summary)是2015年中整理的两种调用方式,包括通过URL和JavaScriptCore来实现调用<br>
在最新的示例中都有做更新和优化。<br>
相关文章地址：[iOS下JS与原生OC互相调用(总结)](http://www.jianshu.com/p/d19689e0ed83)

## JS_OC_URL
[JS_OC_URL](https://github.com/Haley-Wong/JS_OC/tree/master/JS_OC_URL)展示了UIWebView和WKWebView通过URL来实现JS调用原生OC的示例。
在JS_OC_summary的基础上有了点小小的优化。<br>
相关文章地址：[iOS下JS与OC互相调用（一）--UIWebView 拦截URL](http://www.jianshu.com/p/7151987f012d)
[iOS下JS与OC互相调用（二）--WKWebView 拦截URL](http://www.jianshu.com/p/99c3af6894f4)

## JS_OC_MessageHandler
[JS_OC_MessageHandler](https://github.com/Haley-Wong/JS_OC/tree/master/JS_OC_MessageHandler)是利用WKWebView提供的新的API实现的JS调用原生OC,更简洁和方便。<br>
相关文章地址：[iOS下JS与OC互相调用（三）--MessageHandler](http://www.jianshu.com/p/433e59c5a9eb)

其他几篇待续。

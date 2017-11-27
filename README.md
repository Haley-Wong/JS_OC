# JS_OC
JS与原生OC互相调用的Demo(持续更新中),如果帮助到你理解JS与iOS Native的交互，麻烦给个star ⭐️ ⭐️。<br>
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
相关文章地址：<br>
[iOS下JS与原生OC互相调用(总结)](http://www.jianshu.com/p/d19689e0ed83)

## JS_OC_URL
[JS_OC_URL](https://github.com/Haley-Wong/JS_OC/tree/master/JS_OC_URL)展示了UIWebView和WKWebView通过URL来实现JS调用原生OC的示例。
在JS_OC_summary的基础上有了点小小的优化。<br>
相关文章地址：<br>
[iOS下JS与OC互相调用（一）--UIWebView 拦截URL](http://www.jianshu.com/p/7151987f012d)<br>
[iOS下JS与OC互相调用（二）--WKWebView 拦截URL](http://www.jianshu.com/p/99c3af6894f4)

## JS_OC_MessageHandler
[JS_OC_MessageHandler](https://github.com/Haley-Wong/JS_OC/tree/master/JS_OC_MessageHandler)是利用WKWebView提供的新的API实现的JS调用原生OC,更简洁和方便。<br>
相关文章地址：<br>
[iOS下JS与OC互相调用（三）--MessageHandler](http://www.jianshu.com/p/433e59c5a9eb)

## JS_OC_JavaScriptCore
[JS_OC_JavaScriptCore](https://github.com/Haley-Wong/JS_OC/tree/master/JS_OC_JavaScriptCore)是利用JavaScriptCore框架来实现JS与OC相互调用的示例。<br>
相关文章地址：<br>
[iOS下JS与OC互相调用（四）--JavaScriptCore](http://www.jianshu.com/p/4db513ed2c1a)

## JS_OC_WebViewJavascriptBridge
[JS_OC_WebViewJavascriptBridge](https://github.com/Haley-Wong/JS_OC/tree/master/JS_OC_WebViewJavascriptBridge)是通过第三方框架[WebViewJavascriptBridge]()来实现JS与OC交互的示例。<br>
相关文章地址：<br>
[iOS下JS与OC互相调用（五）--UIWebView + WebViewJavascriptBridge](http://www.jianshu.com/p/2be213e3f673)<br>
[iOS下JS与OC互相调用（六）--WKWebView + WebViewJavascriptBridge](http://www.jianshu.com/p/e951af9e5e74)<br>

> 目前我Demo中的WebViewJavascriptBridge库不是最新版本，在最新的iOS系统有崩溃，各位在使用该第三方库时，记得先更新到最新版本。

## JS_OC_Cordova
[JS_OC_Cordova](https://github.com/Haley-Wong/JS_OC/tree/master/JS_OC_Cordova)是通过第三方框架Cordova来实现JS与OC交互的示例。<br>
相关文章地址：<br>
[iOS下JS与OC互相调用（七）--Cordova 基础](http://www.jianshu.com/p/78e486b31953)<br>
[iOS下JS与OC互相调用（八）--Cordova详解+实战](http://www.jianshu.com/p/e74bc7abac8d)<br>

简书和csdn 下分别有一个专题，还在持续更新中：<br>
简书：[JS与OC交互](http://www.jianshu.com/notebooks/5513092/latest)

csdn:[iOS 原生与 JS 交互](http://blog.csdn.net/column/details/12696.html)


其他几篇待续。

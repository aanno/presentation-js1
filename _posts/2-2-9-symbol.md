---
layout: slide
title: Symbole
id: es6-symbol
---
{% highlight javascript %}
let MyClass = (function() {

  // module scoped symbol
  let key = Symbol("key")

  function MyClass(privateData) {
    this[key] = privateData
  }

  MyClass.prototype = {
    doStuff: function() {
      ... this[key] ...
    }
  }

  return MyClass
})()

var c = new MyClass("hello")
// Keine Sichtbarkeit des Properties von außen
c["key"] === undefined
{% endhighlight %}


---
layout: slide
title: Proxies
id: es6-proxy
---
{% highlight javascript %}
// Proxying a normal object
let target = {}
let handler = {
  get: function (receiver, name) {
    return `Hello, ${name}!`
  }
}

let p = new Proxy(target, handler);
p.world === 'Hello, world!'

// Proxying a function object
let target = function () { return 'I am the target'; };
let handler = {
  apply: function (receiver, ...args) {
    return 'I am the proxy'
  }
}

let p = new Proxy(target, handler)
p() === 'I am the proxy'

{% endhighlight %}


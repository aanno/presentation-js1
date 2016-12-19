---
layout: slide
title: Subclassing Builtins
id: es6-subclass
---
{% highlight javascript %}
// Pseudo-code of Array
class Array {
    constructor(...args) { /* ... */ }
    static [Symbol.create]() {
        // Install special [[DefineOwnProperty]]
        // to magically update 'length'
    }
}

// User code of Array subclass
class MyArray extends Array {
    constructor(...args) { super(...args); }
}

// Two-phase 'new':
// 1) Call @@create to allocate object
// 2) Invoke constructor on new instance
let arr = new MyArray();
arr[1] = 12
arr.length == 2
{% endhighlight %}


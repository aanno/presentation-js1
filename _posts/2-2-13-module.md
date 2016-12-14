---
layout: slide
title: Module
id: es6-module
---
{% highlight javascript %}

// Defining a module
// lib/math.js
export function sum(x, y) {
  return x + y
}
export var pi = 3.141593

// Using a module
// app.js
import * as math from "lib/math"
alert("2π = " + math.sum(math.pi, math.pi))

// Another way to use the module
// otherApp.js
import {sum, pi} from "lib/math"
alert("2π = " + sum(pi, pi))

// default export and imports

// lib/mathplusplus.js
export * from "lib/math";
export var e = 2.71828182846;
export default function(x) {
    return Math.log(x)
}

// app.js
import ln, {pi, e} from "lib/mathplusplus"
alert("2π = " + ln(e)*pi*2)

{% endhighlight %}


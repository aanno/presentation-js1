---
layout: slide
title: Module
id: es6-module
---
<section markdown="1">

{% highlight javascript %}

// Defining a module
// lib/math.js
export function sum(x, y) {
  return x + y
}
export let pi = 3.141593

// Using a module
// app.js
import * as math from "lib/math"
alert("2π = " + math.sum(math.pi, math.pi))

// Another way to use the module
// otherApp.js
import {sum, pi} from "lib/math"
alert("2π = " + sum(pi, pi))

{% endhighlight %}

</section>

<section markdown="1">

### Default Module

{% highlight javascript %}
// lib/mathplusplus.js
export * from "lib/math"
export let e = 2.71828182846
export default function(x) {
    return Math.log(x)
}

// app.js
import ln, {pi, e} from "lib/mathplusplus"
alert("2π = " + ln(e)*pi*2)

{% endhighlight %}

</section>

<section markdown="1">

 * 3 Arten des Module Imports: *, default und benamt
 * ES6 beinhaltet ein Module System
 * Keine Unterschiede mehr zwischen Node.js und Browser!

</section>


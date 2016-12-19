---
layout: slide
title: Generatoren
id: es6-generator
---
{% highlight javascript %}
let fibonacci = {
  [Symbol.iterator]: function*() {
    let pre = 0, cur = 1
    for (;;) {
      let temp = pre
      pre = cur
      cur += temp
      yield cur
    }
  }
}

for (let n of fibonacci) {
  // truncate the sequence at 1000
  if (n > 1000)
    break
  console.log(n)
}
{% endhighlight %}


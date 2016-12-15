---
layout: slide
title: JavaScript Modul Systeme
id: es5-module
---
<section markdown="1">

### Export

{% highlight javascript %}
// File greetings.js
module.exports = {
  sayHelloInEnglish: function() {
    return "HELLO"
  },
       
  sayHelloInSpanish: function() {
    return "Hola"
  },
}
{% endhighlight %}

</section>

<section markdown="1">

### Import

{% highlight javascript %}
var greetings = require("./greetings.js");
{% endhighlight %}

</section>

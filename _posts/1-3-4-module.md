---
layout: slide
title: JavaScript Module Systeme
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

<section markdown="1">

### Module Systeme

 * In ES5 gab es diverse Module Systeme/Implementierungen
   + CommonJS, AMD, Bower, RequireJS
 * Unterschiedlich zwischen Node.js und Browser
 * ES6 vereinheitlicht und vereinfacht

</section>

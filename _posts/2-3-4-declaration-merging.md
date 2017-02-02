---
layout: slide
title: Declaration Merging
id: ts-merging
---
<section markdown="1">

### 2 Interfaces mit selben Namen...

{% highlight javascript %}
interface Foo {
    doIt()
}
{% endhighlight %}

{% highlight javascript %}
interface Foo {
    doSomething()
    doSomethingDifferent()
}
{% endhighlight %}

</section>

<section markdown="1">

### ...werden zu

{% highlight typescript %}
interface Foo {
    doSomething()
    doSomethingDifferent()
    doIt()
}
{% endhighlight %}

</section>

<section markdown="1">

### Merge-bar

 * Vieles kann gemerged werden
 * Module mit Klassen
 * Funktionen und Enums
 * ...

</section>

<section markdown="1">

### Nicht Merge-bar

 * Mehrere Klassen
 * Klassen und Variablen
 * Klassen und Interfaces

</section>

<section markdown="1">

 * https://www.typescriptlang.org/docs/handbook/declaration-merging.html
 * https://blog.oio.de/2014/03/21/declaration-merging-typescript/

</section>



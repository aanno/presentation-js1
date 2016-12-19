---
layout: slide
title: Definitions Files
id: ts-definitions
---
<section markdown="1">

{% highlight typescript %}
declare let foo: number
declare function greet(greeting: string): void

declare namespace myLib {
    function makeGreeting(s: string): string
    let numberOfGreetings: number
}
{% endhighlight %}

</section>

<section markdown="1">

 * Type Definition File sind **notwendig** um aus TypeScript normales JavaScript zu benutzen
 * Enthalten Deklarationen
 * `declare` kann in *.d.ts Dateien weg gelassen werden (d.h. ist implizit)

</section>

<section markdown="1">

### Direktes Verwendung von JS aus TS

{% highlight typescript %}
import MyImgJs from '../../Common/MyImg.js'

const MyImg: new() => any = MyImgJs
{% endhighlight %}

</section>

<section markdown="1">

{% highlight typescript %}
{% endhighlight %}

</section>

<section markdown="1">

* https://typescript.codeplex.com/wikipage?title=Writing%20Definition%20%28.d.ts%29%20Files
* http://www.typescriptlang.org/docs/handbook/declaration-files/introduction.html

</section>

---
layout: slide
title: JS Threading Modell
id: js-threading-modell
---
<section markdown="1">

<!--
![JS Event Loop]({{ site.url }}/assets/images/event-loop.png){: .image}
klkljkj jhjh
-->

<img src="{{ site.url }}/assets/images/event-loop.png" alt="JS Event Loop" style="width: 1200px;"/>
Courtesy of [JS Event Loop Explained](http://blog.carbonfive.com/2013/10/27/the-javascript-event-loop-explained/){: .external .small}.

</section>

<section markdown="1">

**Non-blocking** IO, daher oft _Callbacks_
    {% highlight javascript %}
    request('http://www.google.com', 
        function(error, response, body) {
            console.log(body)
        })
    console.log('Done!')
    {% endhighlight %}
**Event Loop** basiert <br/>
    {% highlight javascript %}
    while(queue.waitForMessage()){
      queue.processNextMessage();
    }
    {% endhighlight %}
    
</section>

<section markdown="1">

* Run-to-completion: Eine Funktion kann nicht unterbrochen werden
* Adding messages: <code>setTimeout</code>
* Mehrere Threads (iframe, webworker) können nur über Message Pasing kommunizieren (<code>postMessage</code>)

</section>


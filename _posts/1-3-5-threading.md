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

<img src="{{ site.url }}/assets/images/event-loop.png" alt="JS Event Loop" style="width: 1200px;"/>{: .stretch}
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
      queue.processNextMessage()
    }
    {% endhighlight %}
    
</section>

<section markdown="1">

* Run-to-completion: Eine Funktion kann nicht unterbrochen werden
* Adding messages: <code>setTimeout</code>
* Mehrere Threads (iframe, webworker) können nur über Message Pasing kommunizieren (<code>postMessage</code>)
* Kein Locking!

</section>

<section markdown="1">

## Wie skaliert das auf dem Server?

* NodeJS beinhalted ein [Cluster Module](http://nodejs.org/docs/latest/api/cluster.html){: .external }
* Mehrere NodeJS Instanzen benutzen auch mehrere Prozessor Kerne (z.B. hinter einem Nginx)
* Socket.io kann für Realtime Interaktionen von mehreren Client verwendet werden
* Zudem gibt es Module wie `pm2` und `loopback`

</section>

<section markdown="1">

[http://www.aaronstannard.com/intro-to-nodejs-for-net-developers/](Intro to Node.JS){: .external}

> Node’s true innovation is its evented + asynchronous I/O model.

<aside markdown="1" class="notes">
 http://searchservervirtualization.techtarget.com/definition/Our-Favorite-Technology-Quotations
 </aside>

</section>

<section markdown="1">

* http://stackoverflow.com/questions/2387724/node-js-on-multi-core-machines]
* http://blog.carbonfive.com/2014/02/28/taking-advantage-of-multi-processor-environments-in-node-js/
* http://stackoverflow.com/questions/14795145/how-the-single-threaded-non-blocking-io-model-works-in-node-js
* https://softwareengineeringdaily.com/2015/08/02/how-does-node-js-work-asynchronously-without-multithreading/

</section>


---
layout: slide
title: Fetch
id: fetch
---
<section markdown="1">

{% highlight javascript %}
let myImage = document.querySelector('img')

fetch('flowers.jpg')
.then(function(response) {
  return response.blob()
})
.then(function(myBlob) {
  let objectURL = URL.createObjectURL(myBlob)
  myImage.src = objectURL
})
{% endhighlight %}


</section>


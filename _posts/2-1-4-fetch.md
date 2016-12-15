---
layout: slide
title: Fetch
id: fetch
---
<section markdown="1">

### Loop through a nested collection

{% highlight javascript %}
var myImage = document.querySelector('img')

fetch('flowers.jpg')
.then(function(response) {
  return response.blob()
})
.then(function(myBlob) {
  var objectURL = URL.createObjectURL(myBlob)
  myImage.src = objectURL
})
{% endhighlight %}


</section>


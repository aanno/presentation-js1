---
layout: slide
title: Symbole
id: es6-symbol
---
{% highlight javascript %}
function linkify( selector ) {
  if( supports3DTransforms ) {
    let nodes = document.querySelectorAll( selector )
    for (let i = 0, len = nodes.length; i &lt; len; ++i) {
      let node = nodes[i]
      if( !node.className ) {
        node.className += ' roll'
      }
    }
  }
}
{% endhighlight %}


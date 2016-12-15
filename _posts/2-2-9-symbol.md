---
layout: slide
title: Symbole
id: es6-symbol
---
{% highlight javascript %}
function linkify( selector ) {
  if( supports3DTransforms ) {
    var nodes = document.querySelectorAll( selector )
    for( var i = 0, len = nodes.length; i &lt; len; i++ ) {
      var node = nodes[i]
      if( !node.className ) {
        node.className += ' roll'
      }
    }
  }
}
{% endhighlight %}


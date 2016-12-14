---
layout: slide
title: JavaScript Objekte
id: es5-object
---
{% highlight javascript %}
// creates the property x on the global object
x = 42
// creates the property y on the global object, and marks it as non-configurable
var y = 43;     
myobj = {
  h: 4,
  k: 5
};

// x is a property of the global object and can be deleted
delete x;       // returns true

// y is not configurable, so it cannot be deleted                
delete y;       // returns false 

// delete doesn't affect certain predefined properties
delete Math.PI; // returns false 

// user-defined properties can be deleted
delete myobj.h; // returns true 


{% endhighlight %}

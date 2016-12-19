---
layout: slide
title: JavaScript Arrays
id: es5-array
---
{% highlight javascript %}
var fruits = ["Banana", "Orange", "Apple", "Mango"]

// convert to string
document.getElementById("demo").innerHTML = fruits.toString()
// # Banana,Orange,Apple,Mango

fruits.join(" * ")
// # Banana * Orange * Apple * Mango

// Changes the first element of fruits to "Kiwi"
fruits[0] = "Kiwi"

// The first parameter (2) defines 
// the position where new elements should be spliced in.
// The second parameter (0) defines 
// how many elements should be removed.
// The rest of the parameters ("Lemon" , "Kiwi") define 
// the new elements to be added.
fruits.splice(2, 0, "Lemon", "Kiwi")
// # ["Kiwi", "Orange", "Lemon", "Kiwi", "Apple", "Mango"]

// Sorts the elements of fruits 
fruits.sort()

// length of array
fruits.length
{% endhighlight %}

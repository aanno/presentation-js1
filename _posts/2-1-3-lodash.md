---
layout: slide
title: Lodash
id: lodash
---
<section markdown="1">

> Reduce LOC and improve clarity of your application logic with Lodash

[http://colintoh.com/blog/lodash-10-javascript-utility-functions-stop-rewriting](Lodash){: .external}

[https://lodash.com/docs/4.17.2](https://lodash.com/docs/4.17.2){: .external}

</section>

<section markdown="1">

### Loop through a nested collection

{% highlight javascript %}

let ownerArr = [{
    "owner": "Colin",
    "pets": [{"name":"dog1"}, {"name": "dog2"}],
}, {
    "owner": "John",
    "pets": [{"name":"dog3"}, {"name": "dog4"}],
}]

// Array's map method.
ownerArr.map(function(owner){
   return owner.pets[0].name
})

// Lodash
_.map(ownerArr, 'pets[0].name')

{% endhighlight %}


</section>

<section markdown="1">

### Deep-cloning Javascript object

{% highlight javascript %}

let objA = {
    "name": "colin"
}

// Normal method? Too long. See Stackoverflow for solution: http://stackoverflow.com/questions/4459928/how-to-deep-clone-in-javascript

// Lodash
let objB = _.cloneDeep(objA)
objB === objA // false

{% endhighlight %}

</section>

<section markdown="1">

### Extending object

{% highlight javascript %}

let objA = {"name": "colin", "car": "suzuki"}
let objB = {"name": "james", "age": 17}
let objC = {"pet": "dog"}

// Lodash
_.assign(objA, objB, objC)
// {"name": "james", "car": "suzuki", "age": 17, "pet": "dog"}

{% endhighlight %}

</section>

<section markdown="1">

### Removing properties from object

{% highlight javascript %}

// Naive method: Remove an array of keys from object
Object.prototype.remove = function(arr) {
    let that = this
    arr.forEach(function(key){
        delete(that[key])
    })
}

let objA = {"name": "colin", "car": "suzuki", "age": 17}
objA.remove(['car', 'age'])
objA // {"name": "colin"}

// Lodash
objA = _.omit(objA, ['car', 'age']) // {"name": "colin"}

{% endhighlight %}

</section>

<section markdown="1">

### Cont...

{% highlight javascript %}

let objA = {"name": "colin", "car": "suzuki", "age": 17}

// Lodash
objA = _.omit(objA, 'car') // {"name": "colin", "age": 17}
objA = _.omit(objA, _.isNumber) // {"name": "colin"}

{% endhighlight %}

</section>

<section markdown="1">

* http://stackoverflow.com/questions/21536627/whats-the-difference-between-transform-and-reduce-in-lodash

</section>

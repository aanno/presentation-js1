---
layout: slide
title: Arrows vs. Functions
id: es6-arrows
---
<section markdown="1">

{% highlight javascript %}
// Expression bodies
let odds = evens.map(v => v + 1)
let nums = evens.map((v, i) => v + i)
let pairs = evens.map(v => ({even: v, odd: v + 1}))

// Statement bodies
nums.forEach(v => {
  if (v % 5 === 0)
    fives.push(v)
})

// Lexical this
let bob = {
  _name: "Bob",
  _friends: [],
  printFriends() {
    this._friends.forEach(f =>
      console.log(this._name + " knows " + f))
  }
}
{% endhighlight %}

</section>

<section markdown="1">

### `this` and `function`

{% highlight javascript %}
function Person(age) {
    this.age = age
    this.growOld = function() {
        this.age++
    }
}
let person = new Person(1)
setTimeout(person.growOld,1000)

setTimeout(function() { console.log(person.age); },2000)
// 1, should have been 2
{% endhighlight %}

</section>

<section markdown="1">

### `this` and `function`

 * Problem: `setTimeout(person.growOld,1000)` führt `growOld` im _Kontext_ von `window` aus
 * Vorher: `windows.age === undefined`
 * Nachher: `windows.age === NaN` (wegen `undefined + 1`)
 * Besser `growOld` als Arrow Funktion
 * Arrow Funktion bindet an das äußere `this` (kein späterer _Kontext_)

</section>

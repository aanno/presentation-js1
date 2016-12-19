---
layout: slide
title: let const destructing
id: es6-let
---
{% highlight javascript %}

// let and const
function f() {
  {
    let x
    {
      // okay, block scoped name
      const x = "sneaky"
      // error, const
      x = "foo"
    }
    // error, already declared in block
    let x = "inner"
  }
}

// DESTRUCTION

// list matching
let [a, , b] = [1,2,3]

// object matching
let { op: a, lhs: { op: b }, rhs: c }
       = getASTNode()

// object matching shorthand
// binds `op`, `lhs` and `rhs` in scope
let {op, lhs, rhs} = getASTNode()

// Can be used in parameter position
function g({name: x}) {
  console.log(x)
}
g({name: 5})

// Fail-soft destructuring
let [a] = []
a === undefined

// Fail-soft destructuring with defaults
let [a = 1] = []
a === 1

{% endhighlight %}

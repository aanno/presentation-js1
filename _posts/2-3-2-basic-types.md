---
layout: slide
title: Basic Types
id: ts-basics
---
<section markdown="1">

### Basics

{% highlight typescript %}
let isDone: boolean = false

let decimal: number = 6
let hex: number = 0xf00d
let binary: number = 0b1010
let octal: number = 0o744

let color: string = "blue"

let list: number[] = [1, 2, 3]
{% endhighlight %}

</section>

<section markdown="1">

### Tuples

{% highlight typescript %}
// Declare a tuple type
let x: [string, number]
// Initialize it
x = ["hello", 10] // OK
// Initialize it incorrectly
x = [10, "hello"] // Error

console.log(x[0].substr(1)) // OK
console.log(x[1].substr(1)) 
// Error, 'number' does not have 'substr'
{% endhighlight %}

</section>

<section markdown="1">

### Any und Object

{% highlight typescript %}
let notSure: any = 4
notSure = "maybe a string instead"
notSure = false // okay, definitely a boolean

let notSure: any = 4
notSure.ifItExists() // okay, ifItExists might exist at runtime
notSure.toFixed() 
// okay, toFixed exists (but the compiler doesn't check)

let prettySure: Object = 4
prettySure.toFixed() 
// Error: Property 'toFixed' doesn't exist on type 'Object'.

let list: any[] = [1, true, "free"]

list[1] = 100
{% endhighlight %}

</section>

<section markdown="1">

### Void, Null, Undefined, and Never

{% highlight typescript %}
function warnUser(): void {
    alert("This is my warning message");
}
let unusable: void = undefined

// Not much else we can assign to these variables!
let u: undefined = undefined
let n: null = null

// Function returning never must have unreachable end point
function error(message: string): never {
    throw new Error(message)
}

// Inferred return type is never
function fail() {
    return error("Something failed")
}

// Function returning never must have unreachable end point
function infiniteLoop(): never {
    while (true) {
    }
}
{% endhighlight %}

</section>

<section markdown="1">

### Type assertions (Casts)

{% highlight typescript %}
let someValue: any = "this is a string"

let strLength: number = (someValue as string).length
{% endhighlight %}

</section>

<section markdown="1">

### Interfaces

{% highlight typescript %}
interface SquareConfig {
    color: string // required property
    width?: number  // optional property
}

function createSquare(config: SquareConfig): {color: string; area: number} {
    let newSquare = {color: "white", area: 100}
    if (config.color) {
        newSquare.color = config.color
    }
    if (config.width) {
        newSquare.area = config.width * config.width
    }
    return newSquare
}

let mySquare = createSquare({color: "black"})
{% endhighlight %}

</section>

<section markdown="1">

### Generics

{% highlight typescript %}
function identity<T>(arg: T): T {
    return arg
}
let output = identity("myString");  // type of output will be 'string'

interface Lengthwise {
    length: number
}

function loggingIdentity<T extends Lengthwise>(arg: T): T {
    console.log(arg.length)
    // Now we know it has a .length property, so no more error
    return arg
}
{% endhighlight %}

</section>

<section markdown="1">

{% highlight typescript %}
{% endhighlight %}

</section>

<section markdown="1">

 * https://github.com/Microsoft/TypeScript/wiki/What's-new-in-TypeScript
 * https://www.typescriptlang.org/docs/handbook/basic-types.html
 * https://basarat.gitbooks.io/typescript/content/docs/types/typeGuard.html
 * https://www.typescriptlang.org/docs/handbook/symbols.html

</section>

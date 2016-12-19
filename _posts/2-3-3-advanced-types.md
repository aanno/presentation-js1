---
layout: slide
title: Advanced Types
id: ts-advanced
---
<section markdown="1">

### Intersection Types

{% highlight typescript %}
function extend<T, U>(first: T, second: U): T & U {
    let result = <T & U>{}
    for (let id in first) {
        (<any>result)[id] = (<any>first)[id]
    }
    for (let id in second) {
        if (!result.hasOwnProperty(id)) {
            (<any>result)[id] = (<any>second)[id]
        }
    }
    return result
}

class Person {
    constructor(public name: string) { }
}
interface Loggable {
    log(): void
}
class ConsoleLogger implements Loggable {
    log() {
        // ...
    }
}
let jim = extend(new Person("Jim"), new ConsoleLogger())
let n = jim.name
jim.log()
{% endhighlight %}

</section>

<section markdown="1">

### Union Types

{% highlight typescript %}
function padLeft(value: string, padding: string | number) {
    if (typeof padding === "number") {
        return Array(padding + 1).join(" ") + value
    }
    if (typeof padding === "string") {
        return padding + value
    }
    throw new Error(`Expected string or number, got '${padding}'.`)
}

padLeft("Hello world", 4) // returns "    Hello world"

let indentedString = padLeft("Hello world", true) // errors during compilation

{% endhighlight %}

</section>

<section markdown="1">

### Type guards

{% highlight typescript %}
function isFish(pet: Fish | Bird): pet is Fish {
    return (pet as Fish).swim !== undefined
}
{% endhighlight %}

</section>

<section markdown="1">

### Type Aliases

{% highlight typescript %}
type Name = string
type NameResolver = () => string
type NameOrResolver = Name | NameResolver
function getName(n: NameOrResolver): Name {
    if (typeof n === "string") {
        return n
    }
    else {
        return n()
    }
}
{% endhighlight %}

</section>

<section markdown="1">

{% highlight typescript %}
{% endhighlight %}

</section>

<section markdown="1">

{% highlight typescript %}
{% endhighlight %}

</section>

<section markdown="1">

{% highlight typescript %}
{% endhighlight %}

</section>

<section markdown="1">

https://www.typescriptlang.org/docs/handbook/advanced-types.html
https://www.typescriptlang.org/docs/handbook/modules.html
https://basarat.gitbooks.io/typescript/content/docs/async-await.html

https://github.com/Microsoft/TypeScript/issues/3203
http://blog.wolksoftware.com/working-with-react-and-typescript
https://www.typescriptlang.org/docs/handbook/react-&-webpack.html
https://github.com/Microsoft/TypeScript/issues/5478

</section>

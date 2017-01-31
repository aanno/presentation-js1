---
layout: slide
title: JSX
id: react-jsx
---
<section markdown="1">
* XML Syntax Erweiterung für JS
* Wird vom Transpiler in JS übersetzt 
* Transpiler Übersetzung konfigurierbar (`React.createElement()`)
* Ergebnis: Sprache für Templates, aber volle JS Syntax
* Kann für HTML verwendet werden
</section>

<section markdown="1">
### Quellcode
{% highlight typescript %}
const element: React.ReactNode = (
  <h1 className="greeting">
    Hello, world!
  </h1>
)
{% endhighlight %}
</section>

<section markdown="1">
### Transpiler
{% highlight typescript %}
const element: React.ReactNode = React.createElement(
  'h1',
  {className: 'greeting'},
  'Hello, world!'
)
{% endhighlight %}
</section>

<section markdown="1">
### Ausführung `createElement` -> _React Element_
{% highlight typescript %}
// Note: this structure is simplified
const element = {
  type: 'h1',
  props: {
    className: 'greeting',
    children: 'Hello, world'
  }
}
{% endhighlight %}
</section>

<section markdown="1">
### Keine HTML bzw. JS Injection
{% highlight typescript %}
const title: string = response.potentiallyMaliciousInput
// This is safe:
const element: React.ReactNode = <h1>{title}</h1>
{% endhighlight %}
</section>

<section markdown="1">
### JSX und JS Ausdrücke
{% highlight typescript %}
// Inside a React Component ...
getGreeting(user) {
  if (user) {
    return <h1>Hello, {this.formatName(this.user)}!</h1>
  }
  return <img src={this.user.avatarUrl} />
}

formatName(user) {
  return user.firstName + ' ' + user.lastName
}

const user = {
  firstName: 'Harper',
  lastName: 'Perez',
  avatarUrl: 'http://...',
}
{% endhighlight %}
</section>

<section markdown="1">
{% highlight typescript %}
{% endhighlight %}
</section>

<section markdown="1">
* https://facebook.github.io/react/docs/introducing-jsx.html
* https://www.typescriptlang.org/docs/handbook/jsx.html
* https://basarat.gitbooks.io/typescript/content/docs/jsx/tsx.html
</section>


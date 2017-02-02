---
layout: slide
title: Komponenten
id: react-komponente
---
<section markdown="1">
* Props sind Read-Only
* State niemals direct verändern
* State Änderungen dürfen asynchron sein
* State Änderungen werden (flach) verschmolzen
* Top-Down Datenfluss
</section>

<section markdown="1">
### Eine einfache Komponente ...
{% highlight typescript %}
interface IWelcome {
    name: string,
}

class Welcome extends React.Component<IWelcome, {}> {
  render() {
    return <h1>Hello, {this.props.name}</h1>
  }
}
{% endhighlight %}
</section>

<section markdown="1">
### ... wird benutzt
{% highlight typescript %}
const element: React.ReactNode = <Welcome name="Sara" />

ReactDOM.render(
  element,
  document.getElementById('root')
)
{% endhighlight %}
</section>

<section markdown="1">
### ... wird mehrmals benutzt
{% highlight typescript %}
const element: React.ReactNode = (
    <div>
        <Welcome name="Sara" />
        <Welcome name="Cahal" />
        <Welcome name="Edite" />
    </div>
)

ReactDOM.render(
  element,
  document.getElementById('root')
)
{% endhighlight %}
</section>

<section markdown="1">
{% highlight typescript %}
interface IClockComponentState {
    date: Date,
}

class Clock extends React.Component<{}, IClockComponentState> {

  timerID: number

  constructor(props) {
    super(props);
    this.state = {date: new Date()}
  }

  componentDidMount() {
    this.timerID = setInterval(
      () => this.tick(),
      1000
    )
  }

  componentWillUnmount() {
    clearInterval(this.timerID)
  }

  tick() {
    this.setState({date: new Date()})
  }

  render() {
    return (
      <div>
        <h1>Hello, world!</h1>
        <h2>It is {this.state.date.toLocaleTimeString()}.</h2>
      </div>
    )
  }
}

ReactDOM.render(
  <Clock />,
  document.getElementById('root')
)
{% endhighlight %}
</section>

<section markdown="1">
{% highlight typescript %}
{% endhighlight %}
</section>

<section markdown="1">
* https://facebook.github.io/react/docs/components-and-props.html
* https://facebook.github.io/react/docs/state-and-lifecycle.html
</section>

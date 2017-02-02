---
layout: slide
title: Formulare
id: react-formulare
---
<section markdown="1">
* HTML Form Elemente unterhalten ihren eignen Zustand
* React möchte aber den gesamten Zustand kontrollieren
* Mögliche Lösung: React Zustand den Form Elementen aufzwingen
* React Controlled Components
</section>

<section markdown="1">
### Beispiel Controlled Component
{% highlight typescript %}
interface INameFormState {
    value: string,
}

class NameForm extends React.Component<{}, INameFormState> {
  constructor(props) {
    super(props)
    this.state = {value: ''}

    this.handleChange = this.handleChange.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleChange(event) {
    this.setState({value: event.target.value})
  }

  handleSubmit(event) {
    alert('A name was submitted: ' + this.state.value)
    event.preventDefault()
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <label>
          Name:
          <input type="text" value={this.state.value} onChange={this.handleChange} />
        </label>
        <input type="submit" value="Submit" />
      </form>
    )
  }
}
{% endhighlight %}
</section>

<section markdown="1">
### Alternativen

* Uncontrolled Components
* Da Formularverarbeitung und Validierung kompliziert ist,<br/>
  gibt es dafür Libraries
* Beispiel: formsy-react
</section>

<section markdown="1">
* https://facebook.github.io/react/docs/forms.html#controlled-components
* https://facebook.github.io/react/docs/uncontrolled-components.html
* https://github.com/christianalfoni/formsy-react
</section>

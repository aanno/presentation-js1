---
layout: slide
title: Lebenzyklus
id: react-lebenszyklus
---
<section markdown="1">
* *Mounting*: Erzeugung und Einfügen in den DOM Baum
* *Updating*: Änderung an Props bzw. State<br/>
  (nicht beim 1. Rendern)
* *Unmounting*: Element wird aus DOM Baum entfernt
* *Andere APIs*: Wichtig, aber nicht direkt Lebenszyklus
</section>

<section markdown="1">
### Mounting

* `constructor(props)`: 
   + _Vor_ dem Einfügen
   + Zugriff auf Props
   + State kann initialisiert werden
   + Anti-Pattern: State anhand der Props initialisieren
</section>

<section markdown="1">
### Updating 1

* `componentWillMount()`: 
   + direkt _vor_ dem Einfügen
   + _keine_ Seiteneffekte erlaubt
   + State Änderung mit `setState` möglich
* `componentDidMount()`: 
   + direkt _nach_ dem Einfügen
   + gute Stelle für `Actions` (und `Store.listen`)
   + State Änderung führt zum Re-`render()`n
* `componentWillReceiveProps(nextProps)`:
   + Props habe sich _möglicherweise_ geändert
   + Wird nicht beim Mounten aufgerufen
   + State Änderung mit `setState` möglich

</section>

<section markdown="1">
### Updating 2

* `shouldComponentUpdate(nextProps, nextState): boolean`:
  + default: `return true`
  + Wird _nicht_ fürs 1. Rendern und <br/>
    _nicht_ bei `forceUpdate` aufgerufen
  + Performance Optimierung

</section>

<section markdown="1">
### Updating 3

* `componentWillUpdate(nextProps, nextState)`:
  + direkt _vor_ dem Update, wenn sich Props bzw. State geändert haben
  + nur wenn `shouldComponentUpdate` `true` zurück gab 
  + State Änderung _nicht_ möglich
* `componentDidUpdate(prevProps, prevState)`:
  + direkt _nach_ dem Update, wenn sich Props bzw. State geändert haben
  + nur wenn `shouldComponentUpdate` `true` zurück gab 
  + gute Stelle für manuelle DOM Änderungen (fortgeschritten!)
  + gute Stelle für Actions

</section>

<section markdown="1">
### Unmounting

* `componentWillUnmount()`:
  + direkt _vor_ dem Entfernen aus dem DOM Baum
  + cleanup (z.B. `Store.unlisten`, timer)

</section>

<section markdown="1">
### Andere APIs

* `setState(nextState, callback?)`:
  + *Niemals* State direkt setzen, immer `setState` benutzen
  + Verursacht einen _shallow merge_
  + callback ist _deprecated_<br/>
    (ähnlich wie `componentDidUpdate`)
  + ruft implizit `shouldComponentUpdate`
  + löst meist ein Re-`render`n aus
* `forceUpdate()`:
  + erzwingt ein Re-`render`n
  + ruft _nicht_ `shouldComponentUpdate` auf
</section>

<section markdown="1">
* https://facebook.github.io/react/docs/react-component.html
* https://facebook.github.io/react/docs/create-fragment.html
* https://facebook.github.io/react/docs/lifting-state-up.html
</section>

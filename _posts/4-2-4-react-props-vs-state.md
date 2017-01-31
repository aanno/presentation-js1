---
layout: slide
title: Props und State
id: react-props-vs-state
---
<section markdown="1">
### Gemeinsamkeiten

* Bilden gemeinsam den Zustand der Komponente
* Änderungen bekommt die Komponente 'automatisch' mit
* Bei Änderungen wird (meist) `render` ausgelöst
* Die Komponente sollte den Zustand nicht direkt ändern
* Zustand sollte in `render` auch verwendet werden
  (Ansonsten reicht eine Instanzvariable)

</section>

<section markdown="1">
### Props

* Werden durch ein JSX Attribut gesetzt
* Kommen daher aus der übergeordneten Komponente
* Read-Only
* Funktionaler 'Anteil' der Komponente
* Komponenten _nur_ mit Props (ohne State) sind
  + rein funktional
  + einfach wieder zu verwenden
  + einfach zu verstehen

</section>

<section markdown="1">
### State

* Kommt (meist) aus einem Flux-Store
  + subscribe/listen notwendig
  + unsubscribe/unlisten notwendig
* Geeignet für Seiteneffekte und asynchrone Änderungen
* Nur über `setState` ändern
* 'shallow merge' durch `setState`

</section>

<section markdown="1">
* https://facebook.github.io/react/docs/react-component.html
</section>

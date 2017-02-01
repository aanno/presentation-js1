---
layout: slide
title: Architektur
id: react-architektur
---
<section markdown="1">
### Hauptmerkmale

* Top-Down Datenfluss
* Besonders geeignet, wenn Zustand in einer unveränderlichen und flachen Datenstruktur
</section>

<section markdown="1">
### Wie beginne ich?

1. UI in Komponenten zerlegen
1. Statische Version des UI in React implementieren
1. Minimale (aber vollständige) Zustandsrepresentation des UI identifizieren 
1. Zustand aufteilen (Stores, Props, State)
1. Inversen Datenfluss hinzufügen (mittels Flux)
</section>

<section markdown="1">
### Woher kommt die Geschwindigkeit?

* Virtual DOM
* Leichtgewichtige Komponenten
* Vergleich zwischen alten und neuen Komponentenbaum
* Nur Änderungen werden ins 'richtige' DOM eingebaut
</section>

<section markdown="1">
### Vergleicht mit Angular 2

* _kein_ ~~Virtual DOM~~
* Benutzung von WebWorkern zum Event Dispatch (2 Threads)
* Ìnterne Verwendung on `zone.js`: thread-local storage
* Kann mit 'Web Components' zusammen arbeiten
* Support for 'Shadow DOM'
</section>

<section markdown="1">
* https://facebook.github.io/react/docs/thinking-in-react.html
</section>

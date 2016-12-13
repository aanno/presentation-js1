# Modernes JavaScript

## Früher

* **AJAX**: Anpassung/Updates der vom Server gelieferten Seiten
* Code wird im wesentlichen selbst geschrieben
* Kein Build System oder Build System vom Server
* JQuery 
* JavaScript wie im Browser
* Browserunterschiede müssen im Code beachtet werden
* Nicht (ganz) veraltet: Wird für Content-getriebene Seiten immer noch verwendet

## Heute

* Komplettes HTML wird von JavaScript erzeugt
* Es gibt keine Seiten mehr: Die Application wird (nur) am Anfang geladen: <br>
  **Single Page Application** (SPA)
* Die Applikation benutzt sehr viele JS Komponenten (> 100)
* Komponentenmanagement und Build System auf der Basis von **Node.js**
* Browserunterscheide werden durch **Polyfills** ausgebügelt
* Serveranbingung über **REST** oder **GraphQL**

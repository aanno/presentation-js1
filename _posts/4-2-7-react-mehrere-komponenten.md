---
layout: slide
title: Mehrere Komponenten
id: react-mehrere-komponenten
---
<section markdown="1">
### Informationsfluss äußere zu innerer Komponente

* Mittels Props einfach möglich
* Einfach zu verstehen
* Eingängige Syntax
</section>

<section markdown="1">
### Informationsfluss innere zu äußerer Komponete

* Work-around: Mit Props auch Callbacks an innere Komponente übergeben
* Innere Komponente kann die Callbacks dann aufrufen
* Deutlich schwieriger zu verstehen
* Komplizierte Syntax, da für die Callbacks auf ES6 Instanzmethoden `bind` benötigt wird
</section>

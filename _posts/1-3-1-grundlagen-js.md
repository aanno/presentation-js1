---
layout: slide
title: Grundlagen JavaScript
id: js-basics
---
<section markdown="1">

* [_Skalare_](https://developer.mozilla.org/de/docs/Glossary/einfache_datenelemente){: .external}: `boolean, number, string, null, undefined, Symbol (ES6)`
* [_builtins_](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects){: .external}: `Array, Date, Error, Function, JSON, NaN, RegExp, ...`
* [Object.prototype](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Object/prototype){: .external}
* Object
    + Properties: `value, writable, enumerable, configurable`
    + Accessors: `get, set, enumerable (for ... in), configurable`
    + [Prototypenkette](https://developer.mozilla.org/en/docs/Web/JavaScript/Inheritance_and_the_prototype_chain){: .external}

</section>

<section markdown="1">

* Arrays 
    + Arrays sind einfach Objekte
    + `for ... in` ist definiert (siehe `enumerable`)
* [Array-like Objects](http://www.nfriedly.com/techblog/2009/06/advanced-javascript-objects-arrays-and-array-like-objects/){: .external}
    + `length` property
    + numbered elements: Die properties sind (Ganz-)Zahlen
    + Beispiel: `arguments` Variable
</section>

<section markdown="1">

* Browser
    + [`window`](https://developer.mozilla.org/en/docs/Web/API/Window){: external}
    + [DOM](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model){: .external}
    + DOM Events und [Handler](https://developer.mozilla.org/en-US/docs/Web/Guide/Events/Event_handlers){: .external}

</section>

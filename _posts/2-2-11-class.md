---
layout: slide
title: Klassen
id: es6-class
---
<section markdown="1">

{% highlight javascript %}
class SkinnedMesh extends THREE.Mesh {
  constructor(geometry, materials) {
    super(geometry, materials)
    
    this.idMatrix = SkinnedMesh.defaultMatrix()
    this.bones = []
    this.boneMatrices = []
    //...
  }
  update(camera) {
    //...
    super.update()
  }
  get boneCount() {
    return this.bones.length;
  }
  set matrixType(matrixType) {
    this.idMatrix = SkinnedMesh[matrixType]()
  }
  static defaultMatrix() {
    return new THREE.Matrix4()
  }
}
{% endhighlight %}

</section>

<section markdown="1">

 * ES6 Klassen sind nur 'Syntactic Sugar'
 * ES6 ist (weiterhin) prototype-basiert
 * Wichtigste Konsequenz: `this` ist praktisch immer notwendig<br/>
   z.B. kein Zugriff auf Properties ohne `this`
 * 'Statics' werden in der 'constructor function' definiert
 
</section>

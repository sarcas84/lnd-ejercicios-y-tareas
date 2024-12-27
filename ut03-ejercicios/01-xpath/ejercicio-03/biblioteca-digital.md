
## Ejercicio 3 Biblioteca Digital

```xml
<library>
  <book id="301">
    <title>The Catcher in the Rye</title>
    <author>J.D. Salinger</author>
    <genre>Fiction</genre>
    <available>true</available>
  </book>
  <book id="302">
    <title>To Kill a Mockingbird</title>
    <author>Harper Lee</author>
    <genre>Fiction</genre>
    <available>false</available>
  </book>
  <book id="303">
    <title>The Great Gatsby</title>
    <author>F. Scott Fitzgerald</author>
    <genre>Fiction</genre>
    <available>true</available>
  </book>
  <book id="304">
    <title>1984</title>
    <author>George Orwell</author>
    <genre>Dystopian</genre>
    <available>true</available>
  </book>
  <book id="305">
    <title>Moby Dick</title>
    <author>Herman Melville</author>
    <genre>Adventure</genre>
    <available>false</available>
  </book>
</library>
```

__Pregunta 1__
Selecciona todos los títulos de los libros.

`//title`

__Pregunta 2__
Selecciona todos los libros disponibles (con available="true").

//book[@available="true"]`

__Pregunta 3__
Selecciona el autor del libro "1984".

`//book[title="1984"]/author`

__Pregunta 4__
Selecciona todos los géneros de libros únicos.

`distinct-values(//genre)` _sólo en XPath 2.0_

__Pregunta 5__
Cuenta cuántos libros están disponibles.

`count(//book[@available="true"])`

__Pregunta 6__
Selecciona los títulos de los libros que no están disponibles.

`//book[@available="false"]/title`

__Pregunta 7__
Selecciona los autores cuyos libros están disponibles.

`//book[@available="true"]/author`

__Pregunta 8__
Selecciona el ID del libro "The Great Gatsby".

`//book[title="The Great Gatsby"]/@id`

__Pregunta 9__
Selecciona todos los libros del género "Fiction".

`//book[genre="Fiction"]`

__Pregunta 10__
Selecciona los títulos de los libros cuyo autor es "Herman Melville".

`//book[author="Herman Melville"]/title`

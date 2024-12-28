
## Ejercicio 3 Biblioteca Digital

__Pregunta 1__
Selecciona todos los títulos de los libros.

`//title`

```
XPath Query: //title

[Line 3] title: The Catcher in the Rye
[Line 9] title: To Kill a Mockingbird
[Line 15] title: The Great Gatsby
[Line 21] title: 1984
[Line 27] title: Moby Dick
```

__Pregunta 2__
Selecciona todos los libros disponibles (con available="true").

`//book[available="true"]`

```
XPath Query: //book[available="true"]

[Line 2] book: 
    The Catcher in the Rye
    J.D. Salinger
    Fiction
    true
  
[Line 14] book: 
    The Great Gatsby
    F. Scott Fitzgerald
    Fiction
    true
  
[Line 20] book: 
    1984
    George Orwell
    Dystopian
    true
```

__Pregunta 3__
Selecciona el autor del libro "1984".

`//book[title="1984"]/author`

```
XPath Query: //book[title="1984"]/author

[Line 22] author: George Orwell
```

__Pregunta 4__
Selecciona todos los géneros de libros únicos.

`distinct-values(//genre)` _(a partir de XPath 2.0)_

En XPath 1.0 utilizamos `//genre`y eliminamos los duplicados manualmente o mediante herramienta externa.

```
XPath Query: //genre

[Line 5] genre: Fiction
[Line 11] genre: Fiction
[Line 17] genre: Fiction
[Line 23] genre: Dystopian
[Line 29] genre: Adventure
```

__Pregunta 5__
Cuenta cuántos libros están disponibles.

`count(//book[@available="true"])`

```
XPath Query: count(//book[available="true"])

[Result]: 3
```

__Pregunta 6__
Selecciona los títulos de los libros que no están disponibles.

`//book[@available="false"]/title`

```
XPath Query: //book[available="false"]/title

[Line 9] title: To Kill a Mockingbird
[Line 27] title: Moby Dick
```

__Pregunta 7__
Selecciona los autores cuyos libros están disponibles.

`//book[@available="true"]/author`

```
XPath Query: //book[available="true"]/author

[Line 4] author: J.D. Salinger
[Line 16] author: F. Scott Fitzgerald
[Line 22] author: George Orwell
```

__Pregunta 8__
Selecciona el ID del libro "The Great Gatsby".

`//book[title="The Great Gatsby"]/@id`

```
XPath Query: //book[title="The Great Gatsby"]/@id

[Line 14] id: 303
```

__Pregunta 9__
Selecciona todos los libros del género "Fiction".

`//book[genre="Fiction"]`

```
XPath Query: //book[genre="Fiction"]

[Line 2] book: 
    The Catcher in the Rye
    J.D. Salinger
    Fiction
    true
  
[Line 8] book: 
    To Kill a Mockingbird
    Harper Lee
    Fiction
    false
  
[Line 14] book: 
    The Great Gatsby
    F. Scott Fitzgerald
    Fiction
    true
```

__Pregunta 10__
Selecciona los títulos de los libros cuyo autor es "Herman Melville".

`//book[author="Herman Melville"]/title`

```
XPath Query: //book[author="Herman Melville"]/title

[Line 27] title: Moby Dick
```
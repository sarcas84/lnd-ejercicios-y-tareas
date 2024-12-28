
## Ejercicio 1 Tienda de Libros

__Pregunta 1__
Selecciona todos los títulos de los libros.

`//title`

```
XPath Query: //title

[Line 3] title: Clean Code
[Line 10] title: The Pragmatic Programmer
[Line 17] title: 1984
[Line 24] title: The Art of War
[Line 31] title: Thinking, Fast and Slow
```

__Pregunta 2__
Selecciona los autores de los libros en el género "Programming".

`//book[genre="Programming"]/author`

```
XPath Query: //book[genre="Programming"]/author

[Line 4] author: Robert C. Martin
[Line 11] author: Andrew Hunt
```

__Pregunta 3__
Selecciona el precio del libro "The Art of War".

`//book[title="The Art of War"]/price`

```
XPath Query: //book[title="The Art of War"]/price

[Line 27] price: 9.99
```

__Pregunta 4__
Cuenta cuántos libros tienen más de 20 en stock.

`count(//book[stock > 20])`

```
XPath Query: count(//book[stock > 20])

[Result]: 2
```

__Pregunta 5__
Selecciona todos los géneros únicos disponibles en la tienda.

`distinct-values(//genre)` _(a partir de XPath 2.0)_

Si se dispone de XPath 1.0, la alternativa sería utilizar `//genre`y eliminar duplicados con otra herramienta o manualmente.

```
XPath Query: //genre

[Line 5] genre: Programming
[Line 12] genre: Programming
[Line 19] genre: Fiction
[Line 26] genre: Philosophy
[Line 33] genre: Psychology
```

__Pregunta 6__
Selecciona el autor cuyo libro cuesta más.

`//book[price = max(//price)]/author` _(a partir de XPath 2.0)_ 

En Xpath 1.0 tendremos que identificar el precio manualmente o mediante otra herramienta y luego ejecutar `//book[price = 40.50]/author`

```
XPath Query: //book[price = 40.50]/author

[Line 11] author: Andrew Hunt
```

__Pregunta 7__
Selecciona el título del libro más barato.

`//book[price = min(//price)]/title` _(a partir de XPath 2.0)_

Como en el ejemplo anterior, en XPath 1.0 tendremos que identificar el precio manualmente o mediante alguna herramienta y usar `//book[price = 9.99]/title`

```
XPath Query: //book[price = 9.99]/title

[Line 24] title: The Art of War
```

__Pregunta 8__
Selecciona todos los libros cuyo precio esté entre 10 y 30.

`//book[price >= 10 and price <= 30]`

```
XPath Query: //book[price >= 10 and price <= 30]

[Line 16] book: 
    1984
    George Orwell
    Fiction
    12.99
    50
  
[Line 30] book: 
    Thinking, Fast and Slow
    Daniel Kahneman
    Psychology
    20.00
    10
 ``` 

__Pregunta 9__
Selecciona todos los libros que tengan menos de 20 unidades en stock.

`//book[stock < 20]`

```
XPath Query: //book[stock < 20]

[Line 9] book: 
    The Pragmatic Programmer
    Andrew Hunt
    Programming
    40.50
    15
  
[Line 30] book: 
    Thinking, Fast and Slow
    Daniel Kahneman
    Psychology
    20.00
    10
```

__Pregunta 10__
Selecciona el atributo id de todos los libros.

`//book/@id`

```
XPath Query: //book/@id

[Line 2] id: 101
[Line 9] id: 102
[Line 16] id: 103
[Line 23] id: 104
[Line 30] id: 105
```

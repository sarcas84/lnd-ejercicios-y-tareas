
## Ejercicio 1 Tienda de Libros

```xml
<bookstore>
  <book id="101">
    <title>Clean Code</title>
    <author>Robert C. Martin</author>
    <genre>Programming</genre>
    <price currency="USD">32.99</price>
    <stock>20</stock>
  </book>
  <book id="102">
    <title>The Pragmatic Programmer</title>
    <author>Andrew Hunt</author>
    <genre>Programming</genre>
    <price currency="USD">40.50</price>
    <stock>15</stock>
  </book>
  <book id="103">
    <title>1984</title>
    <author>George Orwell</author>
    <genre>Fiction</genre>
    <price currency="USD">12.99</price>
    <stock>50</stock>
  </book>
  <book id="104">
    <title>The Art of War</title>
    <author>Sun Tzu</author>
    <genre>Philosophy</genre>
    <price currency="USD">9.99</price>
    <stock>30</stock>
  </book>
  <book id="105">
    <title>Thinking, Fast and Slow</title>
    <author>Daniel Kahneman</author>
    <genre>Psychology</genre>
    <price currency="USD">20.00</price>
    <stock>10</stock>
  </book>
</bookstore>
```
__Pregunta 1__
Selecciona todos los títulos de los libros.

`//title`

__Pregunta 2__
Selecciona los autores de los libros en el género "Programming".

`//book[genre="Programming"]/author`

__Pregunta 3__
Selecciona el precio del libro "The Art of War".

`//book[title="The Art of War"]/price`

__Pregunta 4__
Cuenta cuántos libros tienen más de 20 en stock.

`count(//book[stock > 20])`

__Pregunta 5__
Selecciona todos los géneros únicos disponibles en la tienda.

`distinct-values(//genre)` _(sólo en XPath 2.0)_

__Pregunta 6__
Selecciona el autor cuyo libro cuesta más.

`//book[price = max(//price)]/author` _(sólo en XPath 2.0)_

__Pregunta 7__
Selecciona el título del libro más barato.

`//book[price = min(//price)]/title` _(sólo en XPath 2.0)_

__Pregunta 8__
Selecciona todos los libros cuyo precio esté entre 10 y 30.

`//book[price >= 10 and price <= 30]`

__Pregunta 9__
Selecciona todos los libros que tengan menos de 20 unidades en stock.

`//book[stock < 20]`

__Pregunta 10__
Selecciona el atributo id de todos los libros.

`//book/@id`

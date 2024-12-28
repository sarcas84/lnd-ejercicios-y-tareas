
## Ejercicio 4 Catálogo de Música

__Pregunta 1__
Selecciona todos los títulos de los álbumes.

`//title`

```
XPath Query: //title

[Line 3] title: Thriller
[Line 10] title: The Dark Side of the Moon
[Line 17] title: Back in Black
[Line 24] title: 21
[Line 31] title: Abbey Road
```

__Pregunta 2__
Selecciona los títulos de los álbumes del género "Rock".

`//album[genre="Rock"]/title`

```
XPath Query: //album[genre="Rock"]/title

[Line 10] title: The Dark Side of the Moon
[Line 17] title: Back in Black
[Line 31] title: Abbey Road
```

__Pregunta 3__
Selecciona el precio del álbum "21".

`//album[title="21"]/price`

```
XPath Query: //album[title="21"]/price

[Line 27] price: 12.99
```

__Pregunta 4__
Cuenta cuántos álbumes tienen más de 20 en stock.

`count(//album[stock > 20])`

```
XPath Query: count(//album[stock > 20])

[Result]: 4
```

__Pregunta 5__
Selecciona los nombres de los artistas cuyos álbumes cuestan más de 18 USD.

`//album[price > 18]/artist`

```
XPath Query: //album[price > 18]/artist

[Line 11] artist: Pink Floyd
[Line 18] artist: AC/DC
[Line 32] artist: The Beatles
```

__Pregunta 6__
Selecciona el álbum más caro.

`//album[price = max(//price)]` _(a partir de XPath 2.0)_ 

En Xpath 1.0 tendremos que identificar el precio manualmente o mediante otra herramienta y luego ejecutar `//album[price = 20.99]`

```
XPath Query: //album[price = 20.99]

[Line 9] album: 
    The Dark Side of the Moon
    Pink Floyd
    Rock
    20.99
    30
```

__Pregunta 7__
Selecciona el género del álbum "Thriller".

`//album[title="Thriller"]/genre`

```
XPath Query: //album[title="Thriller"]/genre

[Line 5] genre: Pop
```

__Pregunta 8__
Selecciona el ID de todos los álbumes de la artista "Adele".

`//album[artist="Adele"]/@id`

```
XPath Query: //album[artist="Adele"]/@id

[Line 23] id: 104
```

__Pregunta 9__
Selecciona los álbumes con menos de 30 en stock.

`//album[stock < 30]`

```
XPath Query: //album[stock < 30]

[Line 16] album: 
    Back in Black
    AC/DC
    Rock
    18.50
    25
  
[Line 30] album: 
    Abbey Road
    The Beatles
    Rock
    19.99
    10
```

__Pregunta 10__
Selecciona todos los géneros únicos disponibles.

`distinct-values(//genre)` _(a partir de XPath 2.0)_

En XPath 1.0 utilizamos `//genre`y eliminamos duplicados manualmente o con otra herramienta.

```
XPath Query: //genre

[Line 5] genre: Pop
[Line 12] genre: Rock
[Line 19] genre: Rock
[Line 26] genre: Pop
[Line 33] genre: Rock
```


## Ejercicio 4 Catálogo de Música

```xml
<musicCatalog>
  <album id="101">
    <title>Thriller</title>
    <artist>Michael Jackson</artist>
    <genre>Pop</genre>
    <price currency="USD">15.99</price>
    <stock>50</stock>
  </album>
  <album id="102">
    <title>The Dark Side of the Moon</title>
    <artist>Pink Floyd</artist>
    <genre>Rock</genre>
    <price currency="USD">20.99</price>
    <stock>30</stock>
  </album>
  <album id="103">
    <title>Back in Black</title>
    <artist>AC/DC</artist>
    <genre>Rock</genre>
    <price currency="USD">18.50</price>
    <stock>25</stock>
  </album>
  <album id="104">
    <title>21</title>
    <artist>Adele</artist>
    <genre>Pop</genre>
    <price currency="USD">12.99</price>
    <stock>100</stock>
  </album>
  <album id="105">
    <title>Abbey Road</title>
    <artist>The Beatles</artist>
    <genre>Rock</genre>
    <price currency="USD">19.99</price>
    <stock>10</stock>
  </album>
</musicCatalog>
```

__Pregunta 1__
Selecciona todos los títulos de los álbumes.

`//title`

__Pregunta 2__
Selecciona los títulos de los álbumes del género "Rock".

`//album[genre="Rock"]/title`

__Pregunta 3__
Selecciona el precio del álbum "21".

`//album[title="21"]/price`

__Pregunta 4__
Cuenta cuántos álbumes tienen más de 20 en stock.

`count(//album[stock > 20])`

__Pregunta 5__
Selecciona los nombres de los artistas cuyos álbumes cuestan más de 18 USD.

`//album[price > 18]/artist`

__Pregunta 6__
Selecciona el álbum más caro.

`//album[price = max(//price)]`

__Pregunta 7__
Selecciona el género del álbum "Thriller".

`//album[title="Thriller"]/genre`

__Pregunta 8__
Selecciona el ID de todos los álbumes de la artista "Adele".

`//album[artist="Adele"]/@id`

__Pregunta 9__
Selecciona los álbumes con menos de 30 en stock.

`//album[stock < 30]`

__Pregunta 10__
Selecciona todos los géneros únicos disponibles.

`distinct-values(//genre)` _sólo en XPath 2.0_

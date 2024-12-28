
## Ejercicio 5 Inventario de Productos

__Pregunta 1__
Selecciona los nombres de todos los productos.

`//name`

```
XPath Query: //name

[Line 3] name: Chair
[Line 9] name: Table
[Line 15] name: Lamp
[Line 21] name: Desk
[Line 27] name: Ceiling Light
```

__Pregunta 2__
Selecciona todos los productos de la categoría "Furniture".

`//product[category="Furniture"]`

```
XPath Query: //product[category="Furniture"]

[Line 2] product: 
    Chair
    Furniture
    49.99
    200
  
[Line 8] product: 
    Table
    Furniture
    129.99
    50
  
[Line 20] product: 
    Desk
    Furniture
    249.99
    20
```

__Pregunta 3__
Selecciona el precio del producto "Lamp".

`//product[name="Lamp"]/price`

```
XPath Query: //product[name="Lamp"]/price

[Line 17] price: 19.99
```

__Pregunta 4__
Cuántos productos tienen más de 50 en stock.

`count(//product[stock > 50])`

```
XPath Query: count(//product[stock > 50])

[Result]: 2
```

__Pregunta 5__
Selecciona el producto más caro.

`//product[price = max(//price)]` _(a partir de XPath 2.0)_

En XPath 1.0 identificamos el precio manualmente o con alguna herramienta y ejecutamos `//product[price = 249.99]`.

```
XPath Query: //product[price = 249.99]

[Line 20] product: 
    Desk
    Furniture
    249.99
    20
```

__Pregunta 6__
Selecciona los nombres de los productos con menos de 30 en stock.

`//product[stock < 30]/name`

```
XPath Query: //product[stock < 30]/name

[Line 21] name: Desk
```

__Pregunta 7__
Selecciona todos los precios en USD.

`//price[@currency="USD"]`

```
XPath Query: //price[@currency="USD"]

[Line 5] price: 49.99
[Line 11] price: 129.99
[Line 17] price: 19.99
[Line 23] price: 249.99
[Line 29] price: 79.99
```

__Pregunta 8__
Selecciona el ID de todos los productos de la categoría "Lighting".

`//product[category="Lighting"]/@id`

```
XPath Query: //product[category="Lighting"]/@id

[Line 14] id: P003
[Line 26] id: P005
```

__Pregunta 9__
Selecciona el precio del producto más barato.

`//product[price = min(//price)]/price` _(a partir de XPath 2.0)_

En XPath 1.0 identificamos el precio más bajo manualmente o con alguna herramienta y ejecutamos `//product[price = 19.99]`.

```
XPath Query: //product[price = 19.99]

[Line 14] product: 
    Lamp
    Lighting
    19.99
    100
```

__Pregunta 10__
Selecciona los nombres y precios de todos los productos ordenados por precio.

`//product/name | //product/price` _se pueden extraer nombres y precios así; el orden se puede gestionar externamente ya que XPath no permite ordenar directamente_

```
XPath Query: //product/name | //product/price

[Line 3] name: Chair
[Line 5] price: 49.99
[Line 9] name: Table
[Line 11] price: 129.99
[Line 15] name: Lamp
[Line 17] price: 19.99
[Line 21] name: Desk
[Line 23] price: 249.99
[Line 27] name: Ceiling Light
[Line 29] price: 79.99
```



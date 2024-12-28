
## Ejercicio 2 Tienda de Electrónica

__Pregunta 1__
Selecciona todos los nombres de productos.

`//name`

```
XPath Query: //name

[Line 3] name: Smartphone
[Line 9] name: Laptop
[Line 15] name: Tablet
[Line 21] name: Headphones
```

__Pregunta 2__
Selecciona los productos de la marca "BrandX".

`//item[brand="BrandX"]`

```
XPath Query: //item[brand="BrandX"]

[Line 2] item: 
    Smartphone
    BrandX
    699.99
    50
  
[Line 14] item: 
    Tablet
    BrandX
    399.99
    25
```

__Pregunta 3__
Selecciona el producto más barato.

`//item[price = min(//price)]` _(a partir de XPath 2.0)_

En XPath 1.0, identificamos el precio más bajo con otra herramienta y ejecutamos `//item[price = 199.99]`

```
XPath Query: //item[price = 199.99]

[Line 20] item: 
    Headphones
    BrandZ
    199.99
    100
```

__Pregunta 4__
Selecciona el producto más caro.

`//item[price = max(//price)]` _(a partir de XPath 2.0)_

En XPath 1.0, identificamos el precio y ejecutamos `//item[price = 999.99]`

```
XPath Query: //item[price = 999.99]

[Line 8] item: 
    Laptop
    BrandY
    999.99
    10
```

__Pregunta 5__
Selecciona los nombres y precios de productos con más de 30 unidades en stock.

`//item[stock > 30]/name | //item[stock > 30]/price`

```
XPath Query: //item[stock > 30]/name | //item[stock > 30]/price

[Line 3] name: Smartphone
[Line 5] price: 699.99
[Line 21] name: Headphones
[Line 23] price: 199.99
```

__Pregunta 6__
Selecciona el atributo currency de todos los precios.

`//price/@currency`

```
XPath Query: //price/@currency

[Line 5] currency: USD
[Line 11] currency: USD
[Line 17] currency: USD
[Line 23] currency: USD
```

__Pregunta 7__
 Cuenta cuántos productos hay en stock con menos de 20 unidades.

 `count(//item[stock < 20])`

 ```
 XPath Query: count(//item[stock < 20])

[Result]: 1
```

__Pregunta 8__
Selecciona los nombres de todos los productos cuyo precio sea mayor a 500.

`//item[price > 500]/name`

```
XPath Query: //item[price > 500]/name

[Line 3] name: Smartphone
[Line 9] name: Laptop
```

__Pregunta 9__
Selecciona los nombres de productos con el atributo id mayor a 202.

`//item[@id > 202]/name`

```
XPath Query: //item[@id > 202]/name

[Line 15] name: Tablet
[Line 21] name: Headphones
```

__Pregunta 10__
Selecciona todos los nodos completos de productos con "BrandZ".

`//item[brand="BrandZ"]`

```
XPath Query: //item[brand="BrandZ"]

[Line 20] item: 
    Headphones
    BrandZ
    199.99
    100
```
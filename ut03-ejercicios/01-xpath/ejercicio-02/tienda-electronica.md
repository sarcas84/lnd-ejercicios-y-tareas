
## Ejercicio 2 Tienda de Electrónica

```xml
<electronics>
  <item id="201">
    <name>Smartphone</name>
    <brand>BrandX</brand>
    <price currency="USD">699.99</price>
    <stock>50</stock>
  </item>
  <item id="202">
    <name>Laptop</name>
    <brand>BrandY</brand>
    <price currency="USD">999.99</price>
    <stock>10</stock>
  </item>
  <item id="203">
    <name>Tablet</name>
    <brand>BrandX</brand>
    <price currency="USD">399.99</price>
    <stock>25</stock>
  </item>
  <item id="204">
    <name>Headphones</name>
    <brand>BrandZ</brand>
    <price currency="USD">199.99</price>
    <stock>100</stock>
  </item>
</electronics>
```

__Pregunta 1__
Selecciona todos los nombres de productos.

`//name`

__Pregunta 2__
Selecciona los productos de la marca "BrandX".

`//item[brand="BrandX"]`

__Pregunta 3__
Selecciona el producto más barato.

`//item[price = min(//price)]` _(sólo en XPath 2.0)_

__Pregunta 4__
Selecciona el producto más caro.

`//item[price = max(//price)]` _(sólo en XPath 2.0)_

__Pregunta 5__
Selecciona los nombres y precios de productos con más de 30 unidades en stock.

`//item[stock > 30]/name | //item[stock > 30]/price`

__Pregunta 6__
Selecciona el atributo currency de todos los precios.

`//price/@currency`

__Pregunta 7__
 Cuenta cuántos productos hay en stock con menos de 20 unidades.

 `count(//item[stock < 20])`

__Pregunta 8__
Selecciona los nombres de todos los productos cuyo precio sea mayor a 500.

`//item[price > 500]/name`

__Pregunta 9__
Selecciona los nombres de productos con el atributo id mayor a 202.

`//item[@id > 202]/name`

__Pregunta 10__
Selecciona todos los nodos completos de productos con "BrandZ".

`//item[brand="BrandZ"]`
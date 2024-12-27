
## Ejercicio 5 Inventario de Productos

```xml
<inventory>
  <product id="P001">
    <name>Chair</name>
    <category>Furniture</category>
    <price currency="USD">49.99</price>
    <stock>200</stock>
  </product>
  <product id="P002">
    <name>Table</name>
    <category>Furniture</category>
    <price currency="USD">129.99</price>
    <stock>50</stock>
  </product>
  <product id="P003">
    <name>Lamp</name>
    <category>Lighting</category>
    <price currency="USD">19.99</price>
    <stock>100</stock>
  </product>
  <product id="P004">
    <name>Desk</name>
    <category>Furniture</category>
    <price currency="USD">249.99</price>
    <stock>20</stock>
  </product>
  <product id="P005">
    <name>Ceiling Light</name>
    <category>Lighting</category>
    <price currency="USD">79.99</price>
    <stock>30</stock>
  </product>
</inventory>
```

__Pregunta 1__
Selecciona los nombres de todos los productos.

`//name`

__Pregunta 2__
Selecciona todos los productos de la categoría "Furniture".

`//product[category="Furniture"]`

__Pregunta 3__
Selecciona el precio del producto "Lamp".

`//product[name="Lamp"]/price`

__Pregunta 4__
Cuántos productos tienen más de 50 en stock.

`count(//product[stock > 50])`

__Pregunta 5__
Selecciona el producto más caro.

`//product[price = max(//price)]` _sólo en XPath 2.0_

__Pregunta 6__
Selecciona los nombres de los productos con menos de 30 en stock.

`//product[stock < 30]/name`

__Pregunta 7__
Selecciona todos los precios en USD.

`//price[@currency="USD"]`

__Pregunta 8__
Selecciona el ID de todos los productos de la categoría "Lighting".

`//product[category="Lighting"]/@id`

__Pregunta 9__
Selecciona el precio del producto más barato.

`//product[price = min(//price)]/price` _sólo en XPath 2.0_

__Pregunta 10__
Selecciona los nombres y precios de todos los productos ordenados por precio.

`//product/name | //product/price` _se pueden extraer nombres y precios así; el orden se puede gestionar externamente ya que XPath no permite ordenar directamente_


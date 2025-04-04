
## Ejercicio 3

Crea un documento html mediante el cuál se visualize una tabla como la de la imagen. Para mejorar el estilo de la tabla.


![alt text](image-2.png)

```
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Tabla HTML</title>
  <style>
    table {
      border: 2px solid #000;
      border-collapse: separate;  
      border-spacing: 5px;         
    }
    th, td {
      border: 1px solid #000;
      background-color: #fff;      
    }
   
    td[rowspan] {
      font-weight: bold;
    }
  </style>
</head>
<body>
  <table>
    <thead>
      <tr>
        <th>Categoría</th>
        <th>Etiquetas</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td rowspan="5">Formulario</td>
        <td>form</td>
      </tr>
      <tr>
        <td>button</td>
      </tr>
      <tr>
        <td>input</td>
      </tr>
      <tr>
        <td>select</td>
      </tr>
      <tr>
        <td>textarea</td>
      </tr>
      <tr>
        <td rowspan="5">Tabla</td>
        <td>table</td>
      </tr>
      <tr>
        <td>tr</td>
      </tr>
      <tr>
        <td>th</td>
      </tr>
      <tr>
        <td>td</td>
      </tr>
      <tr>
        <td>caption</td>
      </tr>
      <tr>
        <td rowspan="6">Texto</td>
        <td>b</td>
      </tr>
      <tr>
        <td>em</td>
      </tr>
      <tr>
        <td>i</td>
      </tr>
      <tr>
        <td>strong</td>
      </tr>
      <tr>
        <td>sub</td>
      </tr>
      <tr>
        <td>sup</td>
      </tr>
    </tbody>
  </table>
</body>
</html>
```
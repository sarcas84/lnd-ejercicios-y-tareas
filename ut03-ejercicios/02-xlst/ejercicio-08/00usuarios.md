
## Ejercicio 8_ Crear un Objeto JSON con los nombres de usuarios.

XML de entrada:

```xml
<users>
  <user>
    <id>1</id>
    <name>John Doe</name>
    <email>john@example.com</email>
  </user>
  <user>
    <id>2</id>
    <name>Jane Smith</name>
    <email>jane@example.com</email>
  </user>
</users>
```

Salida: 

```json
[
  {
    "id": "1",
    "name": "John Doe",
    "email": "john@example.com"
  },
  {
    "id": "2",
    "name": "Jane Smith",
    "email": "jane@example.com"
  }
]
```

Como seguimos trabajando con XSLT 1.0, no podemos generar JSON directamente. Para resolverlo, usamos Python para completar el proceso. El archivo XSLT transforma el XML en una salida de texto estructurado que se asemeja a un JSON. Después, Python procesa esta salida y genera un archivo .json con formato válido. Ejecutamos este script desde la terminal con python transform.py, y el JSON generado puede ser validado fácilmente con herramientas como [JSONLint](https://jsonlint.com/).

![alt text](image.png)

_Si tuviéramos soporte para XSLT 3.0, podríamos generar JSON directamente con:_

```
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:output method="json" indent="yes"/>
    <xsl:template match="/">
        <xsl:array>
            <xsl:for-each select="users/user">
                <xsl:map>
                    <xsl:map-entry key="id">
                        <xsl:string><xsl:value-of select="id"/></xsl:string>
                    </xsl:map-entry>
                    <xsl:map-entry key="name">
                        <xsl:string><xsl:value-of select="normalize-space(name)"/></xsl:string>
                    </xsl:map-entry>
                    <xsl:map-entry key="email">
                        <xsl:string><xsl:value-of select="normalize-space(email)"/></xsl:string>
                    </xsl:map-entry>
                </xsl:map>
            </xsl:for-each>
        </xsl:array>
    </xsl:template>
</xsl:stylesheet>
```

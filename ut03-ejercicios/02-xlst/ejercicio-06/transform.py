from lxml import etree

# Cargar el archivo XML y XSLT
xml = etree.parse("frutas.xml")  # Asegúrate de que este archivo esté en la misma carpeta que el script
xslt = etree.parse("frutas.xsl")  # El archivo XSLT con la lógica de transformación

# Ejecutar la transformación
transform = etree.XSLT(xslt)
result = transform(xml)

# Guardar salida como JSON
with open("output.json", "w") as f:
    f.write(str(result))

print("Transformación completada. JSON generado en 'output.json'")

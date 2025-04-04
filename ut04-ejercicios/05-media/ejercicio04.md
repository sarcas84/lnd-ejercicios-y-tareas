
## Ejercicio 4

Crea una página web llamada `videos-preload.html` en la que insertes un vídeo con el atributo _preload_ configurado a `metadata`. Indica cómo se comportaría en este caso. También indica cuáles son los otros posibles valores que puede obtener el atributo _preload_ y cómo se comportaría cada uno de ellos

- [Abrir videos-preload.html](videos-preload.html)

### ¿Cómo se comporta `preload="metadata"`?

Cuando el atributo `preload` está configurado a `"metadata"`, el navegador **solo descarga los metadatos del video** (como la duración, las dimensiones y la miniatura), pero **no descarga el contenido completo** del video hasta que el usuario lo reproduzca.  
Esto ayuda a **ahorrar ancho de banda**, manteniendo cierta información útil visible.

---

### Otros valores de `preload`

- **`none`**  
  El navegador **no carga nada** del video por adelantado, ni los metadatos ni el contenido. Solo comienza a descargarse cuando el usuario pulsa "play".

- **`auto`**  
  El navegador **decide automáticamente cuánto contenido cargar**. Esto puede incluir parte o incluso todo el video, dependiendo del navegador, la conexión a internet y otros factores.



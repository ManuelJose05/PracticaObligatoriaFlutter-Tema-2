# PracticaObligatoriaFlutter-Tema-2

### Carpeta Assets
La carpeta Assets es el lugar donde alojaremos las imágenes que tendrá nuestra App de forma local, es decir, no es una imagén obtenida de Internet.
En esta App guardaremos diferentes logos de Star Wars.

### Carpeta lib
Será la carpeta que contendrá todo el desarrollo de nuestra App, tanto ficheros de servicios, modelos de objetos y las diferenetes pantallas.
Dicha carpeta se divide en:
  - **models:** Esta carpeta contiene los archivos de los modelos de los objetos, que incluyen el modelo del personaje (character) y la imagen animada (GIF).
  - **presentation:** Esta carpeta guarda los archivos relacionados con la lógica de comunicación con APIs. En este caso, contiene dos archivos:
    - **screens:** Alberga los archivos que representan las diferentes pantallas de la App.
    - **widgets:** Contiene los archivos de los widgets personalizados creados en la App.
  - **services: **Guarda los ficheros relacionados con la lógica de comunicación con APIs. En este caso tenemos 2 ficheros:
      - **characters_service: **Incluye los métodos encargados de realizar las peticiones a la API de Star Wars, que devuelve una lista de personajes.
      - **gif_service: **Contiene los métodos encargados de realizar las peticiones a la API de GIFs, que devuelve una lista de GIFs relacionados con los nombres de los personajes obtenidos de la API anterior.



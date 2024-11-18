# PracticaObligatoriaFlutter-Tema-2

## Estructura de Archivos de la Aplicación
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
  - **services:** Guarda los ficheros relacionados con la lógica de comunicación con APIs. En este caso tenemos 2 ficheros:
      - **characters_service:** Incluye los métodos encargados de realizar las peticiones a la API de Star Wars, que devuelve una lista de personajes.
      - **gif_service:** Contiene los métodos encargados de realizar las peticiones a la API de GIFs, que devuelve una lista de GIFs relacionados con los nombres de los personajes obtenidos de la API anterior.
  - **main:**  Es el archivo principal que arranca la aplicación. Es el punto de entrada donde se inicializan los componentes y se gestiona el flujo general de la aplicación.


## Funcionamiento de la App
Al iniciar la aplicación, no se realiza automáticamente ninguna petición a la API. En su lugar, se muestra un texto pulsable acompañado de un círculo de progreso, indicando que el usuario debe pulsar sobre el texto para cargar la información de los personajes. 
Al hacer clic, la app realiza una petición a la API de Star Wars para obtener los datos del personaje, como su nombre, altura y color de pelo.

Posteriormente, con los datos del personaje, se realiza una segunda petición a la API de GIFs para obtener una imagen animada relacionada con el personaje. Toda esta información se presenta en pantalla de manera organizada.
La API de GIFs trae una lista de GIFs relacionados con el personaje, debajo de la información del personaje, hay dos botones que permiten al usuario desplazarse a través de ellos. Al presionar el botón de ">", se muestra el siguiente GIF en la lista, mientras que al presionar el botón de "<", se muestra el GIF anterior.

El AppBar también incluye un botón que, al ser presionado, genera y muestra un personaje aleatorio con sus respectivos detalles y GIF.

Este enfoque da al usuario un control más interactivo sobre la carga de datos y mantiene una experiencia más dinámica.

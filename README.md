
# Práctica Obligatoria Flutter Tema 2

Esta práctica consiste en crear una pantalla (screen) en Flutter en la que se realiza una petición a una API y, utilizando widgets, se muestra información obtenida de la respuesta de la API.

---

## **Widgets principales**

### `CharacterViewWidget`
Este widget es responsable de mostrar la información detallada de un personaje, así como un GIF asociado.

- **Propiedades**:
  - `character`: Información del personaje (nombre, altura, color de piel).
  - `gif`: GIF asociado al personaje.

- **Estructura**:
  - Centrado (`Center`).
  - Disposición en columna (`Column`) que incluye:
    - Imagen del GIF.
    - Nombre del personaje.
    - Información adicional (altura y color de piel) organizada en filas (`Row`).

- **Widgets utilizados**:
  - `Image`: Para mostrar el GIF del personaje.
  - `Text`: Para mostrar el nombre y las propiedades del personaje.
  - `Row`: Disposición horizontal de las propiedades.

### Ejemplo de uso:
```dart
CharacterViewWidget(
  character: personajes[numPersonaje],
  gif: gifs[numGif],
);
```

---

### `HomeScreen`
Pantalla principal de la aplicación, donde se permite navegar entre diferentes personajes y sus GIFs.

- **Estado interno**:
  - Listas:
    - `personajes`: Contiene los personajes obtenidos de un servicio remoto.
    - `gifs`: Contiene los GIFs asociados a los personajes.
  - Variables de control: 
    - `numGif`: Índice para navegar entre GIFs.
    - `numPersonaje`: Índice para cambiar de personaje.

- **Estructura**:
  - Barra superior (`AppBar`) con:
    - Logo de la aplicación.
    - Botón para cambiar aleatoriamente de personaje.
  - Cuerpo principal (`body`) que incluye:
    - Indicador de carga (`CircularProgressIndicator`) hasta que se obtienen los datos.
    - Uso de `FutureBuilder` para gestionar la carga de los GIFs.
    - Widget personalizado (`CharacterViewWidget`) para mostrar la información del personaje actual.
    - Botones de navegación (`FloatingActionButton`) para cambiar entre los GIFs.

- **Widgets utilizados**:
  - `Scaffold`: Layout principal de la pantalla.
  - `AppBar`: Barra superior con título y controles.
  - `TextButton`: Para cargar los personajes.
  - `FloatingActionButton`: Navegación entre GIFs.
  - `FutureBuilder`: Para manejar datos asincrónicos.

## Análisis y Estructura de Archivos de la App
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
  - **main:**  Es el archivo principal que arranca la aplicación. Es el punto de entrada donde se inicializan los componentes y se gestiona el flujo general de la aplicación.

---

## Funcionamiento de la App
1. La pantalla principal muestra un botón para cargar los personajes desde un servicio remoto.
2. Una vez cargados los personajes, se muestra el primero con su respectivo GIF.
3. El usuario puede navegar entre diferentes GIFs de un personaje utilizando los botones de navegación.
4. Se puede cambiar a un personaje aleatorio con el botón en el `AppBar`.

---

## **Requisitos**
- Flutter 3.x o superior.
- Dependencias:
  - `http`: Para realizar solicitudes a las APIs.

---

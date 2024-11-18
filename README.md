
# Documentación de la App

Este repositorio contiene una aplicación Flutter que permite visualizar información sobre personajes y sus GIFs asociados. A continuación, se detalla la estructura y funcionalidad de los principales widgets y pantallas.

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

---

## **Estructura de carpetas**
- `models`: Define los modelos de datos (`Character` y `Gif`).
- `services`: Contiene los servicios para obtener datos de personajes y GIFs.
- `presentation/widgets`: Incluye widgets personalizados como `CharacterViewWidget`.
- `assets`: Recursos estáticos como imágenes.

---

## **Ejemplo del flujo de la App**
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

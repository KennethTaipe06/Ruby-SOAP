# Urls
## Hello world:
localhost:4567
## Documentacion swagger:
localhost:4567/index.html
# Run docker
docker run -it --rm -d -p 4567:4567 --name web byvoxel/ruby:latest

# Hola Mundo SOAP API

## Descripción

Esta aplicación es una API simple construida con Sinatra que implementa un servicio SOAP para retornar un mensaje de saludo. Utiliza Docker para facilitar su despliegue.

## Tecnologías Utilizadas

- **Ruby**: Lenguaje de programación principal.
- **Sinatra**: Framework web utilizado para manejar las rutas y solicitudes.
- **Builder**: Gem para construir respuestas XML.
- **Docker**: Para contenerizar la aplicación.

## Cómo Funciona SOAP en Esta Aplicación

SOAP (Simple Object Access Protocol) es un protocolo basado en XML utilizado para intercambiar información estructurada en servicios web. En esta aplicación, SOAP se utiliza para definir y manejar la operación `/hello`, que retorna un mensaje de saludo en formato XML.

### Flujo de Funcionamiento

1. **Solicitud SOAP**: El cliente envía una solicitud POST a `/hello`.
2. **Procesamiento en Sinatra**: La ruta `/hello` maneja la solicitud, establece el tipo de contenido a `text/xml` y utiliza `builder` para generar la respuesta XML.
3. **Respuesta SOAP**: Se retorna un mensaje SOAP envelopado en XML con el saludo "Hola Mundo!".

## Instrucciones de Uso

1. **Construir la Imagen Docker**:

   ```bash
   docker build -t hola-mundo-soap .
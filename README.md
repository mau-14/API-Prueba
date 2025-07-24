# Symfony + API Platform con Docker

Este proyecto es una API RESTful desarrollada con Symfony y API Platform para una prueba técnica, que se ejecuta dentro de contenedores Docker junto con una base de datos MySQL.

---

## Requisitos previos

- [Docker](https://docs.docker.com/get-docker/) instalado
- [Docker Compose](https://docs.docker.com/compose/install/) instalado
- [Composer](https://getcomposer.org/) instalado localmente

---

## Configuración inicial

1. Clona el repositorio:

    ```bash
    git clone https://github.com/mau-14/API-Prueba

    ```

2. Instalar dependencias (local):

    ```bash
    composer install

    ```

3. Levantar el contenedor:
    ```bash
    docker-compose up --build
    ```

---

## Información

- Toda la documentación de la API se encuentra en http://localhost:8000/api .
- Se requiere una API KEY en el body de la solicitud:
    - Nombre:
        ```bash
          X-API-KEY
        ```
    - Valor:
        ```bash
          WeWelcom_Mauri
        ```

---

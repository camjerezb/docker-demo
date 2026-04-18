# Jira Software Docker Image

Imagen Docker para Jira Software basada en la imagen oficial de Atlassian.

## Requisitos

- Docker instalado
- Docker Compose (opcional)
- Al menos 2GB de RAM disponibles

## Uso

### Opción 1: Con Docker Compose (recomendado)

```bash
docker-compose up -d
```

Accede a Jira en: http://localhost:8080

### Opción 2: Con Docker

```bash
# Construir la imagen
docker build -t jira-software .

# Ejecutar el contenedor
docker run -d \
  -p 8080:8080 \
  -v jira_data:/var/atlassian/application-data/jira \
  --name jira \
  jira-software
```

## Configuración Inicial

Cuando accedas a http://localhost:8080 por primera vez, necesitarás:

1. Completar el asistente de configuración inicial
2. Ingresar una licencia de Jira válida (o usar la versión de prueba)
3. Crear una base de datos
4. Crear tu cuenta de administrador

## Volúmenes

- `jira_data`: Almacena todos los datos y configuración de Jira

## Variables de Entorno

- `JVM_MINIMUM_MEMORY`: Memoria mínima de JVM (default: 512m)
- `JVM_MAXIMUM_MEMORY`: Memoria máxima de JVM (default: 1024m)

## Parar el Contenedor

```bash
docker-compose down
```

o

```bash
docker stop jira
docker rm jira
```

## Notas

- Los datos persistirán en el volumen `jira_data` incluso después de eliminar el contenedor
- Se recomienda aumentar la memoria JVM para producción

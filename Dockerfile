FROM atlassian/jira-software:latest

MAINTAINER Docker User

# Exponer el puerto por defecto de Jira
EXPOSE 8080

# Volúmenes para datos persistentes
VOLUME ["/var/atlassian/application-data/jira"]

# Variables de entorno opcionales
ENV JVM_MINIMUM_MEMORY=512m
ENV JVM_MAXIMUM_MEMORY=1024m

# El contenedor iniciará automáticamente con los servicios de Jira
# Para ejecutar:
# docker build -t jira-software .
# docker run -d -p 8080:8080 --name jira jira-software

# Configuración de un servidor DNS paso a paso


1. [Control de versiones](#1-control-de-versiones)

## 1. Control de versiones

Lo primero es crear un repositorio en GitHub con el nombre `dns-paso-a-paso` y configurarlo como **privado**.

![Repositorio privado en GitHub](img/01-repo-privado.png)

Después se crea el fichero `README.md` con la información del proyecto: el nombre y el autor.
A continuación se crea el fichero `.gitignore` para que Git ignore el directorio `.vagrant/`, que Vagrant genera en local y no debe subirse al repositorio.
Cada cambio se confirma en un commit propio, con un mensaje que explica su propósito
Por último se enlaza el repositorio local con el de GitHub y se suben los commits:
![Historial de commits tras el primer push](img/02-primeros-commits.png)
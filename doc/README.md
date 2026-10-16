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

## 2. Infraestructura como código

Creamos el `Vagrantfile` con la version debian/bookworm64 y la red privada 192.168.56.10
Despues creamos la carpeta files/ donde copiaremos ficheros que vamos a copiar dentro de la máquina virtual y la carpeta 
config/ donde iremos copiando los ficheros de script necesarios paraprovisionar el servicio.
Lo siguiente que haremos sera arrancar la maquina y comprobar que la red esta correctamente

![Maquina arrancada y red activa](img/03-red-servidor.png)

## 3. Instalación de servidor DNS

Arrancamos la maquina , accedemos con ssh y descargamos los paquetes:
- bind9
- bind9utils
- bind9-doc

![Comandos de instalacion](img/04-comandos-instalacion.png)
![Comprobacion de instalacion de paquetes](img/05-comprobacion-paquetes.png)

Creamos el archivo 01-instalar.sh en la carpeta config/ 
![Arhcivo 01-instalar.sh](img/06-instalar-sh.png)

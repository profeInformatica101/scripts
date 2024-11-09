#!/bin/bash
<<'enunciado'
Ver el contenido de un directorio de un usuario introducido por teclado.
enunciado

clear
read -p "Introduce un nombre de usuario: " usuario

# Comprobar que existe el usuario
existe=`getent passwd $usuario`

if [ "$existe" = "" ]
then
    echo "el usuario no existe en el sistema"
fi

# Comprobar que existe el directorio
ls /home/$usuario 1>2 2>/dev/null
if [ $? -eq 0 ]
then
    ls -l /home/$usuario
else
    echo "el directorio no existe en el sistema"
fi
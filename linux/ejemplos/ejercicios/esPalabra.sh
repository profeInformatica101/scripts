#!/bin/bash

# Limpiar pantalla
clear

# Leer una palabra del usuario
read -p "Introduce una palabra: " palabra

# Expresión regular para verificar si la entrada es una palabra válida (solo letras y letras con acentos)
es_palabra='^[a-zA-ZáéíóúÁÉÍÓÚñÑüÜ]+$'

# Validar la palabra usando la expresión regular
if [[ $palabra =~ $es_palabra ]]; then
    echo "La entrada es una palabra válida."
else
    echo "La entrada no es una palabra válida. Debe contener solo letras."
fi

echo "Al reves:"
echo $palabra | rev
#!/bin/bash

# Definir la ruta de la carpeta y el archivo
CARPETA="/home/rocha/IRC9.1_Dominguez_Rocha_Esmeralda_Gpe"
ARCHIVO="Practica_5"

# Fecha actual 
FECHA=$(date +"%y-%m-%d")

# Verificar si la carpeta existe
if [ ! -d "$CARPETA" ]; then
    # Si no existe, crear la carpeta
    mkdir -p "$CARPETA"
    echo "Carpeta $CARPETA creada."
fi

# Definir la ruta completa del archivo
ARCHIVO_PATH="$CARPETA/$ARCHIVO"

# Verificar si el archivo ya existe
if [ -f "$ARCHIVO_PATH" ]; then
    # Si el archivo existe, hacer un respaldo agregando la fecha al nombre
    cp "$ARCHIVO_PATH" "$CARPETA/$ARCHIVO.$FECHA.bak"
    echo "El archivo ya existe. Se ha creado un respaldo con el nombre $ARCHIVO.$FECHA.bak."
else
    # Si no existe el archivo, crear un nuevo archivo
    echo "Este es un archivo de ejemplo." > "$ARCHIVO_PATH"
    echo "El archivo no existía. Se ha creado el archivo $ARCHIVO."
fi

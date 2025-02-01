#!/bin/bash

declare -a urls=("http://www.redhat.com/" "https://www.ibm.com/" "https://www.oracle.com")

file=/home/rocha/IRC9.1_Dominguez_Rocha_Esmeralda_Gpe/urls2.log

while true; do
    # Escribe la fecha y hora al principio de cada ciclo
    printf "$(date)\n" >> "$file"  # Usa '>>' para agregar al archivo en lugar de sobrescribirlo

    for url in "${urls[@]}"; do
        # Consulta el estado HTTP de la URL
        status=$(curl -m 10 -s -I $url | head -n 1 | awk '{print $2}')
        printf "$url,$status\n" >> "$file"  # Agrega el resultado al archivo
    done

    # Pausa de 10 segundos antes de la siguiente iteración
    sleep 10
done


#!/bin/bash

red() {
    printf "\e[1;31m%s\e[0m" "$1"
}
black() {
    printf "\e[1;30m%s\e[0m" "$1"
}
magenta() {
    printf "\e[1;35m%s\e[0m" "$1"
}
reset() {
    printf "\e[0m"
}

# Verificar si se proporcionó un archivo como argumento
if [ $# -ne 1 ]; then
    echo "Usage: $0 <fitxer_csv>"
    exit 1
fi

# Verificar si el archivo CSV existe
if [ ! -f $1 ]; then
    echo Error: El archivo $1 no existe.
    exit 1
fi

# Procesar cada línea del archivo CSV
while IFS=',' read -r user uo email; do
    printf "Usuari $(red "$user") que pertany a la UO $(black "$uo") i correu electrònic $(magenta "$email")\n"
    printf "Usuari %s que pertany a la UO %s i correu electrònic %s\n" "$user" "$uo" "$email" >> usuaris.txt
done < $1

echo El proceso ha finalizado. La información se ha guardado en usuaris.txt

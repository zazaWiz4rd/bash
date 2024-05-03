#!/bin/bash

if [ $# -ne 2 ]; then
    echo Usage: $0 "<directorio_origen> <directorio_destino>"
    exit 1
fi

dir_origen=$1
dir_destino=$2

if [ ! -d $dir_origen ]; then
    echo "Error: El directorio de origen $dir_origen no existe."
    exit 1
fi

nombre_dir=$(basename $dir_origen)
fecha=$(date +"%Y%m%d")
nombre_copia="backup_${nombre_dir}_${fecha}.tar.gz"

if [ -e ${dir_destino}/${nombre_copia} ]; then
    echo "Error: Ya existe un archivo de copia de seguridad con el nombre ${nombre_copia}."
    exit 2
fi

if [ ! -d $dir_destino ]; then
    echo "Error: El directorio de destino $dir_destino no existe."
    exit 1
fi

echo "Realizando copia de seguridad de $dir_origen en $dir_destino/$nombre_copia ..."
tar -czf ${dir_destino}/${nombre_copia} -C $(dirname $dir_origen) $nombre_dir

echo "Copia de seguridad completada correctamente en $dir_destino/$nombre_copia."


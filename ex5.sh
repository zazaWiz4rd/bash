#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <nombre_del_archivo>"
    exit 1
fi

file=$1

# -f verfica si el archivo es regular
if [ -f $file ]; then
    echo $file es un archivo regular.
else
    echo $file no es un archivo regular o no existe.
fi


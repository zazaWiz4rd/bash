#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <directorio1> <directorio2> ..."
    exit 1
fi

for dir in $@; do
    if [ ! -d $dir ]; then
        echo Error: El directorio $directorio no existe o no es un directorio válido.
        continue
    fi

    echo Directorio: $dir
    du -sh $dir
done

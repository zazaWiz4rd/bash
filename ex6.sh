#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <nombre_directorio>"
    exit 1
fi

dir=$1

if [ -d $dir ]; then
    echo El contingut del directori $dir és:
    ls -l $dir
else
    echo $dir no és un directori o no existeix.
fi

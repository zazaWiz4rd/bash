#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Error: Se requieren tres parámetros."
    echo "Uso: $0 <primer_parametro> <segundo_parametro> <tercer_parametro>"
    exit 1
fi

param1=$1
param2=$2
param3=$3

echo "Nom de l'script: $0"
echo "Valor del primer paràmetre de l'script: $param1"
echo "Valor del segon paràmetre de l'script: $param2"
echo "Valor del tercer paràmetre de l'script: $param3"


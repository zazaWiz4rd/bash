#!/bin/bash

if [ "$UID" -eq 0 ]; then
    echo "El superusuario (root) está ejecutando este script."
else
    echo "Este script debe ser ejecutado por el superusuario (root)."
    exit 1
fi

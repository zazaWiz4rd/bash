#!/bin/bash

echo Usuarios que pueden iniciar sesión:
cut -d: -f1 /etc/passwd

echo Por favor, ingresa un nombre de usuario:
read user

if id $user &>/dev/null; then
    echo El usuario $user existe. Intentando iniciar sesión...
    su $user
else
    echo El usuario $usuario no existe.
fi

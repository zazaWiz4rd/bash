#!/bin/bash

if grep -q "^messi:" /etc/passwd; then
    echo "L'usuari messi ha estat trobat al fitxer /etc/passwd."
else
    echo "L'usuari messi no ha estat trobat al fitxer /etc/passwd."
fi

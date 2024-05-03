#!/bin/bash

# Definir las variables
LDAP_SERVER="ldap://tu_servidor_ldap"
LDAP_BASE_DN="dc=tu_dominio,dc=com"
LDAP_BIND_DN="cn=admin,dc=tu_dominio,dc=com"
LDAP_BIND_PW="tu_contraseña"
OUTPUT_FILE="usuarios_dn.txt"

# Realizar la búsqueda de todos los usuarios y guardar sus DN en un archivo
ldapsearch -x -H "$LDAP_SERVER" -b "$LDAP_BASE_DN" -D "$LDAP_BIND_DN" -w "$LDAP_BIND_PW" "(objectClass=posixAccount)" dn > "$OUTPUT_FILE"

# Comprobar si la búsqueda y la escritura en el archivo fueron exitosas
if [ $? -eq 0 ]; then
    echo "Los DN de todos los usuarios se han guardado correctamente en el archivo $OUTPUT_FILE."
else
    echo "Se produjo un error al intentar guardar los DN de los usuarios."
    exit 1
fi

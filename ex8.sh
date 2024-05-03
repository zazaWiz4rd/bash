#!/bin/bash

while true; do
    echo "Por favor, ingresa el valor de la nota (0-10):"
    read nota

    if (( nota >= 0 && nota < 11 )); then
        break
    else
        echo Error: El valor de la nota debe estar entre 0 y 10.
    fi
done

case $nota in
    [0-2])
        echo Tu nota es una D
        ;;
    [3-4])
        echo Tu nota es una C-
        ;;
    [5-6])
        echo Tu nota es una C+
        ;;
    [7-8])
        echo Tu nota es una B
        ;;
    [9-10])
        echo Tu nota es una A
        ;;
esac

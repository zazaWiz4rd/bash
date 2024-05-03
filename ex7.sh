#!/bin/bash

while true; do
    echo "Por favor, ingresa el valor de la nota (0-10):"
    read grade

    if (( grade >= 0 && grade <= 10 )); then
        break
    else
        echo Error: El valor de la nota debe estar entre 0 y 10.
    fi
done

if (( grade >= 0 && grade <= 2 )); then
    echo Tu nota es una D
elif (( grade >= 3 && grade <= 4 )); then
    echo Tu nota es una C-
elif (( grade >= 5 && grade <= 6 )); then
    echo Tu nota es una C+
elif (( grade >= 7 && grade <= 8 )); then
    echo Tu nota es una B
else
    echo Tu nota es una A
fi

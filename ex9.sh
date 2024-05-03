#!/bin/bash

dir=$(ls -d /home/*/)

for dir in $dir; do
    echo "Directorio: $dir"
    du -sh "$dir"
done


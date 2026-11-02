#!/bin/sh
# Вариант А: каталог передаётся первым аргументом
DIR="$1"

for i in "$DIR"/*; do
    if [ -d "$i" ]; then
        echo "$(basename "$i") -> директория"
    elif [ -f "$i" ]; then
        echo "$(basename "$i") -> файл"
    fi
done
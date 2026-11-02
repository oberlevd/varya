#!/bin/sh
# Вариант Б: каталог берётся из переменной окружения CHECK_DIR
DIR="$CHECK_DIR"

for i in "$DIR"/*; do
    if [ -d "$i" ]; then
        echo "$(basename "$i") -> директория"
    elif [ -f "$i" ]; then
        echo "$(basename "$i") -> файл"
    fi
done

#!/bin/sh
# Вариант В: каталог вводится с клавиатуры
echo -n "Введите каталог: "
read DIR

for i in "$DIR"/*; do
    if [ -d "$i" ]; then
        echo "$(basename "$i") -> директория"
    elif [ -f "$i" ]; then
        echo "$(basename "$i") -> файл"
    fi
done

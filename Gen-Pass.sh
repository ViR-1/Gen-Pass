#!/bin/bash

echo -e "\e[35m
╭━━━╮╱╱╱╱╱╱╭━━━╮
┃╭━╮┃╱╱╱╱╱╱┃╭━╮┃
┃┃╱╰╋━━┳━╮╱┃╰━╯┣━━┳━━┳━━╮
┃┃╭━┫┃━┫╭╮╮┃╭━━┫╭╮┃━━┫━━┫
┃╰┻━┃┃━┫┃┃┃┃┃╱╱┃╭╮┣━━┣━━┃
╰━━━┻━━┻╯╰╯╰╯╱╱╰╯╰┻━━┻━━╯\e[0m"

echo -e "\e[31mGenerador de Contraseñas ViR\e[0m"

echo "Generador de contraseñas aleatorias"
read -p "Introduzca la longitud de la contraseña: " length

if ! [[ "$length" =~ ^[0-9]+$ ]]; then
    echo "¡Longitud inválida! Por favor, introduzca un número entero."
    exit 1
fi

password=$(openssl rand -base64 $((length * 3 / 4)) | head -c $length)
echo "Contraseña generada: $password"
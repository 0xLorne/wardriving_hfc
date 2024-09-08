#!/bin/bash

echo -e "\033[1;34m[*] Construyendo la imagen hfc/kismet:latest...\033[0m"

docker build -t hfc/kismet:latest .

if [ $? -eq 0 ]; then
    echo -e "\033[1;32m[+] Se ha construido hfc/kismet:latest con éxito\033[0m"
else
    echo -e "\033[1;31m[-] Ha habido un error al construir la imagen\033[0m"
    exit 1
fi

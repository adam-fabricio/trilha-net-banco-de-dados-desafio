#! /bin/bash

source variaveis.sh

docker run -e "$VAR1" -e "$VAR2" -p "$PORTA" --name "$NOME" --hostname \
"$HOSTNAME" -d "$IMAGEM"


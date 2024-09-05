#! /bin/bash

source variaveis.sh

echo "passo 1"
docker cp filmes.sql mssql:/home/
echo "passo 2"
docker exec -it $NOME $SQLCMD -S localhost -U SA -C -P $PASSWORD -i \
/home/filmes.sql
echo "passo 3"


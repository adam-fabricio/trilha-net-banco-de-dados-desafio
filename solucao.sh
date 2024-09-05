#! /bin/bash

source variaveis.sh

docker cp solucao.sql mssql:/home/
docker exec -it $NOME $SQLCMD -S localhost -U SA -C -P $PASSWORD -i \
/home/solucao.sql


#! /bin/bash

source variaveis.sh

docker exec -it $NOME $SQLCMD -S localhost -U SA -C -P $PASSWORD 

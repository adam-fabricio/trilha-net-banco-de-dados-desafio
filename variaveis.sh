#! /bin/bash

VAR1="ACCEPT_EULA=Y"
VAR2="MSSQL_SA_PASSWORD=<YourStrong@Passw0rd>"
NOME="mssql"
HOSTNAME="mssql"
PORTA="1433:1433"
IMAGEM="mcr.microsoft.com/mssql/server:2022-latest"
SQLCMD="/opt/mssql-tools18/bin/sqlcmd"
PASSWORD='<YourStrong@Passw0rd>'

#!/bin/bash

echo "Atualizando o servidor..."

   apt-get update -y 

   apt-get upgrade -y

   sleep 2

echo "Instalando o apache2..."

   apt-get install apache2 -y 

   sleep 2

echo "Instalando o unzip..."

   apt-get install unzip -y 
   
   sleep 2

echo "Baixando aplicação"

   cd /tmp

   wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

   unzip main.zip 

   sleep 2

echo "Copiando os arquivos no diretório padrão do apache"

   cp -r linux-site-dio-main/*  /var/www/html/

echo "Finalizado"





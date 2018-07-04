#!/bin/bash

clear
echo 

if [ $# -eq 1 ];then 

if [ -d $1 ]; then
  echo "Es un directorio y contiene: "
  echo 
  ls -l $1

elif [ -f $1 ]; then 
  echo "es un fichero y su contenido es: "
  echo 
  cat $1

else
  echo "el parámetro introducido no es válido, probablemente no exista"
fi 

else 
  echo "Error! no ha introducido ningún parametro"
fi

echo 

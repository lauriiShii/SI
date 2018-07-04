#!/bin/bash 

clear 
echo 

if [ $# -eq 0 ]; then 
  echo "No se han introducido parámetros."

else 
  echo "Se han introducido $# parámetros."
  echo "Se han introducido los siguientes parámetros: $*"
  echo "El script se llama: $0"
  echo 
  echo "Se han introducido los siguientes parámetros sucesivamente:"
  echo 
  for var in $*; do
    echo $var
  done 
fi 

echo 

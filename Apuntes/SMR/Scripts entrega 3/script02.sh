#!/bin/bash 

clear
echo 

if [ $# -eq 0 ]; then 
  echo "Debe introducir al menos un parámetro"
else 
  echo "Has introducido $# parámetros"
  echo "Los parámetros son: $*" 
fi 
echo 

suma=0
for var in $* ; do
  let suma=$suma+$var
done

echo "la suma es $suma"
echo  



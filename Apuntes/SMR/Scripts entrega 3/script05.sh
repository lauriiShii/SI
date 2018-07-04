#!/bin/bash

clear
echo 

echo -n "introduce un número: "
read num 

suma=0

while [ $num -ne 0 ]; do 
  let suma=$suma+$num

  echo -n "introduce un número: "
  read num 
done 

echo 
echo "la suma de los numeros introducidos es: $suma"
echo 

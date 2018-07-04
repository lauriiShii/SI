#!/bin/bash 

clear
echo 

a=1
suma=0

while [ $a -le 5 ]; do
  echo -n "introduce un número: "
  read num	
  let suma=$num+$suma

  let a=$a+1
done

echo 
echo "la suma de los números es: $suma"
echo 

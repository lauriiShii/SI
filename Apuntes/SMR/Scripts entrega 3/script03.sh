#!/bin/bash

clear
echo 

echo -n "introduce un número: "
read num

let resto=$num%2

if [ $resto -eq 0 ]; then 
  echo "El número introducido ($num) es par."

else
  echo "El número introducido ($num) es impar."

fi

echo 

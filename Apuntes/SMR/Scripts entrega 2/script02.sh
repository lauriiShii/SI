#!/bin/bash

clear
echo 

echo -n "introduce un número: "
read num1
echo -n "introduce un segundo número: "
read num2

if [ $num1 -gt $num2 ]; then 
	echo
	echo "el número $num1 es mayor que $num2"

  elif [ $num2 -gt $num1 ];then
	echo
	echo "el número $num2 es mayor que $num1"
  else 
	echo 
	echo "los dos números son iguales".
fi
echo 

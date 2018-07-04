#!/bin/bash

clear
echo 

echo -n "introduce un numero: "; read num
echo 

while [ $num != x ];do 

if [ $num -lt 50 ];then 
	echo "el número es menor que 50"

elif [ $num -gt 50 ];then 
	echo "el numero es mayor que 50"

else
	echo "el numero es 50"
fi

echo --------------------------------------------------------------
echo -n "introduzca un número, o presione x para salir: "; read num 
echo 
done


#!/bin/bash

clear
echo 

echo -n "introduce un numero: "; read num
echo 

suma=0 

while [ $num != x ]; do 

if [ $num -ge 50 ] && [ $num -le 80 ];then 
	echo "el numero está entre 50 y 80 (el número es $num)"
else 
	echo "el número no está entre 50 y 80 (el número es $num)"
fi 
sleep 2 
echo 
echo -n "Quieres saber si el numero es par o impar?: ";read resp 
	if [ $resp = si ];then 
		let resto=$num%2
		
		if [ $resto -eq 0 ];then 
			echo "el numero introducido es par."
		else
			echo "el numero introducido es impar."
		fi 
	fi 
echo 
echo -------------------------------------------------------------
echo -n "introduce un número, o pulsa x para salir: "; read num 
echo 
	let suma=$suma+1
done 

echo -n "Quieres saber cuantos números ha introducido en total? "; read total
	echo 
	if [ $total = si ]; then 
		echo "ha introducido un total de $suma numeros."
	fi 
echo 

#!/bin/bash

clear
echo 

echo -n "introduce un número: "; read num 
echo 

contar=0 

while [ $num -ne 0 ]; do 
	let quint=$num*5
	echo "el quintuple del numero es $quint" 
	let contar=$contar+1
	echo 
	echo -------------------------------------
	echo -n "introduce un número: "; read num 
	echo 
done 

echo "se han introducido $contar numeros en total."
echo 

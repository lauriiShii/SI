#!/bin/bash

clear
echo 

echo -n "introduce un numero: "; read num 
echo 

while [ $num -ne 0 ]; do 
	let doble=$num*2
	echo "el doble del numero introducido es: $doble"

echo --------------------------------------
echo -n "introduce un numero: "; read num 
echo 
done

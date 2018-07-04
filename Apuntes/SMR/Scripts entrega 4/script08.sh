#!/bin/bash 

clear
echo 

echo -n "introduzca un número: "
read num

echo 

while [ $num -ne 0 ]; do 
	let doble=2*$num
	let triple=3*$num

	echo "el doble es: $doble"
	echo "el triple es: $triple"
	
	echo 

	echo -n "introduzca otro número: "
	read num 
	echo 
done
echo 



#!/bin/bash

clear
echo 

echo -n "introduce un número: "; read num 
echo -n "introduce otro número: "; read num2
echo 

if [ $num -lt $num2 ]; then 
	echo "los números divisibles entre 5 son: "
	echo 
	while [ $num -le $num2 ]; do 
		let resto=$num%5
		
		if [ $resto -eq 0 ];then 
			echo "- $num"
		fi 
		let num=$num+1
	done

else 
	echo "error, el primero numero no es menor que el segundo." 
fi 
echo 

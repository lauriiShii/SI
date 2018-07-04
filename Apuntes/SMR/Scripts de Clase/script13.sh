#!/bin/bash

clear
echo 

echo -n "introduce un número: "; read num 
echo 

contador=0 

while [ $contador -ne $num ]; do 
	echo "hola"
	let contador=$contador+1
done
echo 


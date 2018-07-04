#!/bin/bash 

clear
echo 

echo -n "introduzca un número base: "
read num

echo 

echo -n "introduzca el exponencial: "
read poten
echo 

a=0 
mult=1
while [ $a -ne $poten ]; do 
	let a=$a+1
	let mult=$mult*$num
	echo $mult
done
echo 



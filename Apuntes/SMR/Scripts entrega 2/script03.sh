#!/bin/bash

clear
echo 

echo -n "introduce un número: "
read n1
echo -n "introduce otro número: "
read n2
echo
echo  

echo "Suma [s/S]: "
echo "Resta [r/R]: "
echo "Multiplicación [m/M]: "
echo "División [d/D]: "
echo "Salir [s/S]: "
echo 
echo -n "¿Qué quieres hacer con los números?: "
read opc
echo 

case $opc in
	s|S) 	let opc=$n1+$n2
		echo "el resultado de la suma es: $opc"
		;;				
	r|R) 	let opc=$n1-$n2
		echo "el resultado de la resta es: $opc"
		;;
	m|M) 	let opc=$n1*$n2
		echo "el resultado de la multiplicación es: $opc"
		;;
	d|D) 	let opc=$n1/$n2
		echo "el resultado de la división es: $opc"
		;;
	x|X) 	echo "Saliendo..."
		sleep 3
esac
echo 


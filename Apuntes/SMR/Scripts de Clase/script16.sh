#!/bin/bash
function suma ()
{
let suma2=$num1+$num2
echo "la suma es: $suma2"
}

###########################################

clear
echo 

echo -n "introduce un número: "; read num1
echo -n "introduce un número: "; read num2 
echo 

suma 

#!/bin/bash

clear
echo 

echo -n "introduce un número: "; read num1
echo -n "introduce otro número: "; read num2 
echo 

let suma=$num1+$num2
let resta=$num1-$num2
let multi=$num1*$num2
let div=$num1/$num2

echo "la suma es $suma"
echo "la resta es $resta"
echo "la multiplicacion es $multi"
echo "la division es $div"
echo 

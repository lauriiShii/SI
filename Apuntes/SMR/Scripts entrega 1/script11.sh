#!/bin/bash

clear
echo 

echo -n "introduce un número: "
read num1

echo -n "introduce otro número: "
read num2
echo 

let suma=$num1+$num2
let resta=$num1-$num2
let multi=$num1*$num2
let div=$num1/$num2

echo "el resultado de la suma es $suma"
echo "el resultado de la resta es $resta"
echo "el resultado de la multiplicación es $multi"
echo "el resultado de la división es $div"
echo 

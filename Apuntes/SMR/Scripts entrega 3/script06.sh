#!/bin/bash 

clear 
echo 

echo "los números impares comprendidos entre el 100 y 200 son: "

a=100

while [ $a -le 200 ];do  
  let resto=$a%2
  	
	if [ $resto -ne 0 ]; then 
	  echo $a
	fi 
  
  let a=$a+1
done
echo 

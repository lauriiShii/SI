#!/bin/bash 

clear 
echo 

echo "los números impares comprendidos entre el 100 y 200 son: "

a=200

while [ $a -ge 100 ];do  
  let resto=$a%2
  	
	if [ $resto -eq 0 ]; then 
	  echo $a
	fi 
  
  let a=$a-1
done
echo 

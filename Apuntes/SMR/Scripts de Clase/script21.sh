#!/bin/bash

function Case1 () 
{
echo -n "introduzca una palabra: "; read pal 
}

function Case2 () 
{
if [ -z $pal ];then 
	echo "Error, debe elejir la opción 1." 
else 
	echo "Comparando palabra con patata.:"
	if [ $pal = patata ]; then 
		echo "la palabra es patata."
	else 
		echo "la palabra no es patata, es $pal"
	fi 
fi
}

function Case3 () 
{
if [ -z $pal ];then 
	echo "Error, debe elegir la opción 1." 
else 
	echo "buscando $pal en fichero datos: "
	sleep 2
	var=`grep $pal datos`
	echo 
		if [ -n $var ];then 
			echo $var
		else
			echo "no se ha encontrado la palabra en datos."
		fi 
fi
}

function Case4 ()
{
if [ -z $pal ];then 
	echo "Error, debe elegir la opción 1." 
else 
	echo "buscando $pal en fichero /etc/passwd:"
	sleep 2
	busc=`grep $pal /etc/passwd`
		if [ $? -eq 0  ]; then 
			echo $busc
		else
			echo "no se ha encontrado la palabra en /etc/passwd."
		fi 
fi
}

function Case5 ()
{
if [ -z $pal ];then 
	echo "Error, debe elegir la opción 1." 
else 
	echo "añadiendo $pal a datos."
	echo 
	echo $pal >> datos 
fi
}

#################################################################

clear
echo 

opc=0 


while [ $opc -ne 6 ] ; do 

echo "--------------------------------------------"
echo " [1] - Introducir palabra."
echo " [2] - Comparar palabra con patata."
echo " [3] - buscar palabra en fichero datos."
echo " [4] - buscar palabra en /etc/passwd"
echo " [5] - Introducir palabra en datos."
echo " [6] - Salir. "
echo "--------------------------------------------"

echo 
echo -n "Elija una opción: "; read opc 
echo 

case $opc in
	1) Case1 ;;
	2) Case2 ;;
	3) Case3 ;;
	4) Case4 ;;
	5) Case5 ;;

	6) echo "Saliendo..."
	   break 
		
esac
echo ---------------------------------------------------
echo -n "pulsa intro para continuar: "; read  
clear 
echo 
done

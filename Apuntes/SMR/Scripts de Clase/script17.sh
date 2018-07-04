#!/bin/bash

clear
echo 

function case1 ()
{
pers=`whoami`
echo "hola $pers"
}

function case2 ()
{
ls
}

function case3 ()
{
echo -n "introduzca el nombre de un fichero: "; read fich
echo 

if [ -f $fich ];then 
	echo "mostrando contenido de $fich: "
	sleep 2
	cat $fich 
	echo 
fi 
}

function case4 ()
{
echo "saliendo..."
sleep 2
break
}

function case5 ()
{
echo "la opción que ha introducido no es correcta, introduzca otra."
}

#######################################################

op=0 

while [ $op -ne 4 ]; do 

echo "###########################################"
echo "#[1] - Saludar.                           #"
echo "#[2] - Mostrar contenido del directorio.  #"
echo "#[3] - Mostrar contenido del fichero.     #"
echo "#[4] - Salir				  #"
echo "###########################################"
echo 

echo -n "elija una opción: "; read opc 
echo 

case $opc in 
	1) case1;;
	2) case2;;
	3) case3;;
	4) case4;;
	*) case5;;
esac
echo 
echo ------------------------------------------------
echo -n "presione intro para continuar: "; read 
clear
echo 
done

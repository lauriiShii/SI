#!/bin/bash 

clear
echo
 
op=0

while [ $op != X ]; do 
echo 
echo \########################################
echo \# "Dar de alta a un usuario - - - - [A]" \#
echo \# "Dar de baja a un usuario - - - - [B]" \#
echo \# "Añadir usuario a un grupo  - - - [C]" \#
echo \# "Crear grupo de usuario   - - - - [D]" \#
echo \# "Salir  - - - - - - - - - - - - - [X]" \#
echo \########################################

echo 

echo -n "Indique lo que quiere hacer: "; read op
echo 

case $op in   
	a|A) echo -n "indique el nombre del usuario que desea crear: "; read usu
	     grep $usu /etc/passwd
	     
	     if [ $? -eq 0 ];then 
		echo "el usuario ya existe."
	     
	     else 
	     	sudo useradd $usu
		if [ $? -eq 0 ]; then 
			echo "el usuario ha sido creado."
		fi
	     fi 
		;;

	b|B) echo -n "indique el nombre del usuario que desea eliminar: "; read el
	     grep $el /etc/passwd
		
	     if [ $? -ne 0 ];then 
		echo "el usuario no existe."
	     
	     else 
	     	sudo userdel $el 
		if [ $? -eq 0 ]; then 
			echo "el usuario ha sido eliminado."
		fi
	     fi 
		;; 

	c|C) echo -n "indique el usuario que quiere añadir: " ; read usu
	     echo -n "indique el grupo al quie quiere que se añada: "; read gru
	     
	     grep $usu /etc/passwd
	     
	     if [ $? -ne 0 ];then
		echo "no se pudo añadir, el usuario no existe."     
	     fi
	     
	     grep $gru /etc/group
	
	     if [ $? -ne 0 ];then
	     	echo "el grupo al que quiere añadir el usuario no existe"
	     fi 
   	     echo "añadiendo al grupo..."
	     sleep 2
	     
	     gpasswd -a $usu $gru 
	     
	     if [ $? -eq 0 ];then 
		echo "el usuario fue añadido al grupo con éxito."
	     fi 
		;;

	d|D) echo -n "indique el nombre del grupo que quiere crear: "; read gru
	     grep $gru /etc/group
	     
	     if [ $? -eq 0 ];then
		echo "no se pudo crear, el grupo ya existe."     
	     else 
		echo "creando grupo."
		groupadd $gru
		
		if [ $? -eq 0 ];then 
			echo "grupo creado con éxito."
		fi 
	     fi 
		;;
	
	x|X) echo "Cerrando..."
	     sleep 2
	     break 
esac
echo 
echo ----------------------------------------------
echo -n "pulse intro para continuar "; read 
clear
echo 
done
echo 

@echo off

::TITULO DEL PROGRAMA
title= UID_INFO

::INFORMAMOS DE LO QUE HACE EL PROGRAMA
echo Introduce un UID por parametro, se comprobara si existe. Si existe dira a que usuario corresponde sino dara un mensaje de error.

:: PULSAMOS CUALQUIER TECLA PARA CONTINUAR
pause>nul 

::INTRODUCIMOS DIRECCION IP
set /p UID_buscado=Identificador de usuario: 

::RECORREMOS LINEA POR LINEA LA CLAVE
do while (read linea)

	::Extrae el usuario
	set /a usuario = (%linea% | cut -d ":" -f 1)
	
	::Extrae la UID
	set /a uid = (%linea% | cut -d ":" -f 3)
	
	::Comprobación
	::Si es se muestra el usuario al que corresponde
	if "%uid%"=="%UID_buscado%" (
	     echo El usuario es %usuario%
	     exit /B 1
    ) then
	::Si no es se muestra un mensaje de error	
	else
	    ::MENSAJE FINAL
        echo El usuario con la UID %UID_buscado% no existe. 

::FIN DEL PROGRAMA
exit /b 0

@echo off
title Distancia de frenado

::Mensajes previos
cls
echo Este programa calcula la distancia de frenado a partir de los par metros:
echo - Tiempo de reacci¢n
echo - Tiempo de frenado
echo - Velocidad del veh¡culo
echo - Deceleraci¢n
echo.

::Captura de par metros
set /P tr=Tiempo de reacci¢n (ms) [750 ms]:
if "%tr%"=="" set tr=750
set /P dec=Deceleraci¢n (m/s2) [6 m/s2]:
if "%tr%"=="" set tr=6
set /P vel=Velocidad del veh¡culo (km/h):
set /P tf=Tiempo de frenado cronometrado (ms):

::C lculos
	::Velocidad en um/ms 
	set /a vel=(vel*1000000)/3600 
	::Deceleraci¢n en um/ms2
	set /a dec=dec
	::Calculo de la distancia en um
	set /a resultado=tr+(vel*tf)-((dec*tf*tf)/2)
	::Distancia en metros
	set /a resultado=resultado/1000000

::Mostrar resultado
echo. 
echo Distancia recorrida: %resultado% metros
echo. 	

exit /b 0

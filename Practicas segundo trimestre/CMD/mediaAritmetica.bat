:: Programa que con una sucesion de numeros devuelva la media aritmetica
@echo off
title Media Aritmetica

:: Menseje de error 
if "%1" == "" (
	echo PRODVEC v1.v2.v3.v4.v5
	exit/B 1
)

:: Extraccion de los valores
for /F "tokens=1-5" delims=." %%a in ("%1") do (
	set v1=%%a
	set v2=%%b
	set v3=%%c
	set v4=%%d
	set v5=%%e
)

:: Calculamos media Aritmetica
set /a result=(v1 + v2 + v3 + v4 + v5)/5

:: Mostrar resultado 
echo Producto escalar: %result%
exit /B 0
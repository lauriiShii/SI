@echo off
title Producto Escalar

::Mensaje de error
set m_error=Error de sintaxis: PRODVEC v1.v2.v3 w1.w2.w3

::Comprobación de argumentos
if "%1"=="" (
	echo %m_error%
	exit /B 1
)
if "%2"=="" (
	echo %m_error%
	exit /B 1
)

::Extracción del 1er vector
for /F "tokens=1-3 delims=." %%a in ("%1") do (
	set v1=%%a
	set v2=%%b
	set v3=%%c
)
::Extracción del 2º vector
for /F "tokens=1-3 delims=." %%a in ("%2") do (
	set w1=%%a
	set w2=%%b
	set w3=%%c
)
::Producto escalar
set /a result=(v1*w1)+(v2*w2)+(v3*w3)

::Mostar resultado
echo Producto escalar: %result%
exit /B 0
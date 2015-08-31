@echo off

rem Start-up script for JEB2 (Windows Console)

rem Prefer a JDK over a JRE
if defined JAVA_HOME (set base="%JAVA_HOME%\bin") else (set base="%SystemRoot%\System32")
set JAVA=%base%\java.exe

rem Note: If the Java path generation does not yield a correct result, manually set
rem the JAVA variable (defined above) to a correct value
if exist %JAVA% goto :checkdep
FOR /F "delims=" %%i IN ('where java') DO set JAVA="%%i"
if exist %JAVA% goto :checkdep
echo JEB requires a Java runtime environment, please install one.
exit /b -1

:checkdep
set INSTALLER="%~dp0bin\jebi.jar"
%JAVA% -jar %INSTALLER% --di
if errorlevel 0 goto :checkupdate
exit /b -1

:checkupdate
%JAVA% -jar %INSTALLER% --up
if errorlevel 0 goto :runjeb
exit /b -1

:runjeb
if "%1" == "-c" goto :startraw
"%~dp0bin\jeb.exe" %*
exit 0

:startraw
%JAVA% -jar "%~dp0bin\cl\jeb.jar" %*

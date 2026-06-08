setlocal
set path=%VECTORCAST_DIR%\mingw\bin;%PATH%
if exist managerDriver.exe del managerDriver.exe

rem This compile command builds an executable that needs stdin
gcc -g manager_driver.c manager.c database.c -o managerDriver.exe || exit /b 1

endlocal

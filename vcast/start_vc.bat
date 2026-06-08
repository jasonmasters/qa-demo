rem set the environment via file in the same dir as this one
call %~dp0\setenv.bat

rem start VC
start %vectorcast_dir%\vcastqt -e Diner_manager

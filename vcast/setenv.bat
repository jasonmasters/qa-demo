rem set environment

rem use NVLM
set VECTOR_LICENSE_FILE=

set VECTORCAST_DIR=c:\dev\VCAST\2026sp1

rem project location
set PROJ_DIR=%~dp0..
pushd %PROJ_DIR%
set PROJ_DIR=%cd%
popd

path=%vectorcast_dir%\MinGW\bin;%path%

if not exist %PROJ_DIR%\vcast\vcshell.db (
    pushd %PROJ_DIR%\src
    %VECTORCAST_DIR%\vcshell --db=%PROJ_DIR%\vcast\vcshell.db buildIt.bat
    popd
)


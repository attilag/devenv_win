@echo off

call win32\config.cmd

REM clean up the previous session if necessary
if exist %DEV_DRIVE%\nul subst /D %DEV_DRIVE%

REM create the development drive
subst %DEV_DRIVE% %ROOT_PATH%

REM prepare the env if this is the first start
if not exist %HOME% md %HOME%
if not exist %TMP% md %TMP%

%DEV_DRIVE%

start %NETBEANS_PATH%\bin\netbeans64.exe %NETBEANS_PARAMS%

@echo off

set VIM_BASE_PATH=%HOME%\.vim

xcopy /Q /Y %VIM_BASE_PATH%\_vimrc %HOME%\
if not exist %HOME%\vimfiles\nul md %HOME%\vimfiles
xcopy /Q /Y /E %VIM_BASE_PATH%\vimfiles %HOME%\vimfiles\
xcopy /Q /Y /E %VIM_BASE_PATH%\snippet %HOME%\vimfiles\snippet\

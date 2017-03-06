@echo off

set NINJA_VERSION=v1.7.2

wget --no-check-certificate https://github.com/ninja-build/ninja/releases/download/%NINJA_VERSION%/ninja-win.zip -O %TMP%\ninja-win.zip
unzip %TMP%\ninja-win.zip -d %TMP%
copy %TMP%\ninja.exe %DEV_DRIVE%\win32\bin

copy %GIT_PATH%\usr\bin\cp.exe %DEV_DRIVE%\win32\bin
copy %GIT_PATH%\usr\bin\install.exe %DEV_DRIVE%\win32\bin
copy %GIT_PATH%\usr\bin\msys-intl-8.dll %DEV_DRIVE%\win32\bin
copy %GIT_PATH%\usr\bin\msys-iconv-2.dll %DEV_DRIVE%\win32\bin
copy %GIT_PATH%\usr\bin\msys-2.0.dll %DEV_DRIVE%\win32\bin
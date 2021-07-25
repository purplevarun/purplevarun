@echo off
echo %1
if "%~x1"==".cpp" (astyle --indent=tab --style=java %1 && del *.orig)
if "%~x1"==".cc" (astyle --indent=tab --style=java %1 && del *.orig)
if "%~x1"==".c" (astyle --indent=tab --style=java %1 && del *.orig)
if "%~x1"==".java" (astyle --indent=tab --style=java %1 && del *.orig)
if "%~x1"==".js" (prettier --write .)
if "%~x1"==".html" (prettier --write .)
if "%~x1"==".css" (prettier --write .)

@echo off
if %1 == debug (
	build\winforms\bin\Main-debug.exe
    pause
) else (
	build\winforms\bin\Main.exe
)

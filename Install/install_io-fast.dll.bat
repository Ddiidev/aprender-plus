@echo off
echo.Copiando dll^(IO_Fast.dll^) para pasta "%windir%"
echo.Copiando dll^(Kixforms.dll^) para pasta "%windir%"
echo.
copy "%~dp0IO_Fast.Dll" "%windir%\IO_Fast.dll"
copy "%~dp0Kixforms.Dll" "%windir%\Kixforms.dll"

echo.Registrando dll^(IO_Fast.dll^) no windows.
RegSvr32 /s "%windir%\IO_Fast.dll"
echo.Registrando dll^(Kixforms.dll^) no windows.
RegSvr32 /s "%windir%\Kixforms.dll"
@echo off
echo.
echo O SDK pode ser baixado em www.runtimesistemas.com.br/sdk.rar
echo.
echo.
"C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SignTool.exe" sign /f C:\Runtime\Firenet\Certificados\Runtime.pfx C:\Runtime\Firenet\Firenet.exe
echo.
pause

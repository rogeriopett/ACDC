@ECHO OFF
REM ************************************************************
REM *              NAO MEXER NESSE ARQUIVO!!!                  *
REM *  ESTE ARQUIVO EH USADO PARA IMPRESSAO DOS ARQUIVOS .TXT  *
REM * DEVE ESTAR NA PASTA "PRINT"			       *	
REM ************************************************************
IF "%1"=="/?" GOTO AJUDA
IF "%1"=="" GOTO NOFILE
IF "%2"=="" GOTO NODEVICE
IF "%2"=="LPT1" GOTO LPT
IF "%2"=="lpt1" GOTO LPT
IF "%2"=="LPT2" GOTO LPT
IF "%2"=="lpt2" GOTO LPT
IF "%2"=="LPT3" GOTO LPT
IF "%2"=="lpt3" GOTO LPT
IF "%2"=="LPT4" GOTO LPT
IF "%2"=="lpt4" GOTO LPT
IF "%2"=="LPT5" GOTO LPT
IF "%2"=="lpt5" GOTO LPT
IF "%2"=="COM1" GOTO COM
IF "%2"=="com1" GOTO COM
IF "%2"=="COM2" GOTO COM
IF "%2"=="com2" GOTO COM
IF "%2"=="COM3" GOTO COM
IF "%2"=="com3" GOTO COM
IF "%2"=="COM4" GOTO COM
IF "%2"=="com4" GOTO COM
IF "%2"=="COM5" GOTO COM
IF "%2"=="com5" GOTO COM
IF NOT "%2"=="" GOTO OUTRAS
GOTO ERRO

:OUTRAS
CD PRINT
TYPE %1 > %2
CD ..
GOTO FIM

:COM
MODE %2:19200,N,8,1
CD PRINT
TYPE %1 > %2
CD ..
GOTO FIM

:LPT
CD PRINT
TYPE %1 > %2
CD ..
GOTO FIM

:NOFILE
ECHO.
ECHO Falta especificar o nome do arquivo.
ECHO.
ECHO Digite PRINT /? para ajuda.
ECHO.
GOTO FIM

:NODEVICE
ECHO.
ECHO Falta especificar o dispositivo onde sera impresso o arquivo.
ECHO.
ECHO Digite PRINT /? para ajuda.
ECHO.
GOTO FIM

:ERRO
ECHO.
ECHO Parametros Incorretos!!!.
ECHO.
GOTO FIM

:AJUDA
ECHO ***********************************************************
ECHO * SINTAXE: PRINT [ARQUIVO.TXT] [PORTA]                    *
ECHO * [ARQUIVO.TXT] = CAMINHO COMPLETO PARA O ARQUIVO.TXT     *
ECHO *       [PORTA] = PORTA=COM1-5 OU LPT1-5 ou \\micro\imp   *
ECHO ***********************************************************
ECHO _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ Runtime Sistemas(R)
ECHO.
GOTO FIM

:FIM

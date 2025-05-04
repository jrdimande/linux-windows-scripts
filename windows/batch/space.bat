@echo off
setlocal enabledelayedexpansion

:: Caminho a analisar
set "PASTA=C:\"

echo Ficheiros maiores que 1 GB em: %PASTA%
echo -----------------------------------------

for /R "%PASTA%" %%F in (*) do (
    set "size=%%~zF"
    if !size! GTR 1073741824 (
        echo %%F - !size! bytes
    )
)

pause

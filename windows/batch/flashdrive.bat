@echo off

:: Receber nome e turma
set /p nome=Insira o seu nome: 
set /p turma=Insira a sua turma: 

echo.
echo Bem-vindo, %nome% da turma %turma%!
echo ------------------------------------------
echo Qual flash drive vai escolher?
echo A: 8GB
echo B: 16GB
echo C: 32GB
echo D: 64GB
echo E: 128GB
echo ------------------------------------------

:: Usando o choice
choice /c ABCDE /n /m "Escolha uma opção (A-E): "

:: data e hora
set datahora=%date% %time%

:: Mostrar rescultado
if errorlevel 5 (
    echo [%datahora%] Escolheu 128GB - Cor: Preta, USB 3.2, Tamanho: 128GB
) else if errorlevel 4 (
    echo [%datahora%] Escolheu 64GB - Cor: Azul, USB 3.1, Tamanho: 64GB
) else if errorlevel 3 (
    echo [%datahora%] Escolheu 32GB - Cor: Verde, USB 3.0, Tamanho: 32GB
) else if errorlevel 2 (
    echo [%datahora%] Escolheu 16GB - Cor: Cinza, USB 2.0, Tamanho: 16GB
) else if errorlevel 1 (
    echo [%datahora%] Escolheu 8GB - Cor: Vermelha, USB 2.0, Tamanho: 8GB
)

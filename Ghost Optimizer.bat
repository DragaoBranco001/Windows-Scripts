@echo off
cls
Title Ghost Optimizer By Dragon White
echo *Ghost Optimizer*
echo Status Hard Disk Drive:
wmic diskdrive get status 
pause
:menu
cls
color 4
date /t
echo Computador: %computername% Usuario: %username%
echo Ghost Optimizer Menu
echo ==================================
echo * 1. Limpeza de Arquivos Temporarios *
echo * 2. Otimzar Unidade para Desempenho *
echo * 3. Limpeza de Disco Avancada       *
echo * 4. Limpar Prefetch - Liberar Armaz *
echo * 5. Sair *
echo ==================================
set /p opcao= Escolha uma opcao:
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6
:opcao1
cls
del %temp%\*.* /s /q
del C:\Windows\Temp\*.* /s /q
echo ==================================
echo * Processo Concluido *
echo ==================================
pause
goto menu
:opcao2
cls
powershell.exe Optimize-Volume -DriveLetter C: -ReTrim -Verbose
echo ==================================
echo * Processo Concluido *
echo ==================================
pause
goto menu
:opcao3
cls
echo ==================================
echo * Processo Concluido *
echo ==================================
cleanmgr /verylowdisk /d
cleanmgr
pause
goto menu
:opcao4
cls
del C:\Windows\prefetch\*.*/s/q
pause
goto menu
:opcao5
cls
exit
:opcao6
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu
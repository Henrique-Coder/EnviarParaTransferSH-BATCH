:: Batch desenvolvido por: FireHDPower#5551

@echo off

:: Título
title Enviar para TransferSH - Por FireHDPower#5551

:: Setando cor do texto no CMD
color F >nul 2>&1

:: Avisos legais para ler antes do uso do script e criador do código
echo.
echo - Discord do Criador: FireHDPower#5551
echo - Repositorio no GitHub: https://github.com/Henrique-Coder/EnviarParaTransferSH-BATCH
echo.
echo -----------------------------------------------------------------------------------------------------------------------
echo.
echo - Diretorio: %~1
echo - Nome: %~n1
echo - Extensao: %~x1
echo - Tamanho: %~z1 B
echo.
echo ------------------------------ CLIQUE EM QUALQUER TECLA PARA INICIAR O UPLOAD DO ARQUIVO ------------------------------

:: Clique em qualquer tecla para continuar o upload do arquivo
pause >nul 2>&1

:: Limpando a tela do CMD e repassando os avisos legais seguido do upload em tempo real
cls
echo.
echo - Discord do Criador: FireHDPower#5551
echo - Repositorio no GitHub: https://github.com/Henrique-Coder/EnviarParaTransferSH-BATCH
echo.
echo -----------------------------------------------------------------------------------------------------------------------
echo.
echo - Data de inicio: %date%
echo - Hora de inicio: %time%
echo.
echo -----------------------------------------------------------------------------------------------------------------------
echo.

:: Upando arquivo para o TransferSH e criando arquivo de texto com o link do arquivo enviado
curl --upload-file %1 https://transfer.sh/%random%%~x1 > %temp%/sendto-fileupload-transfersh-link.txt

:: Verificando arquivo de texto e copiando link para a área de transferência
set /p link_upload=< %temp%/sendto-fileupload-transfersh-link.txt
echo %link_upload% | clip >nul 2>&1

:: Mostrando o diretório, arquivo e link para visualização do arquivo
echo.
echo -----------------------------------------------------------------------------------------------------------------------
echo.
echo O link de download/embed foi copiado para a area de transferencia
echo.
echo - Link: %link_upload%
echo.
echo - Diretorio: %~1
echo - Arquivo: %~n1%~x1
echo - Tamanho: %~z1 B
echo.
echo -----------------------------------------------------------------------------------------------------------------------
echo.
echo - Data de termino: %date%
echo - Hora de termino: %time%
pause >nul 2>&1

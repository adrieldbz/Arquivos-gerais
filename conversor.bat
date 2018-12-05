@echo off
echo =========================================
echo Flv para MP4 - ffmpeg v1.0
echo =========================================
echo.
set /p SourceDir= "Insira o diretório de origem dos arquivos-> "
echo Ok, SOURCE set as %SourceDir%
set /p TargetDir= "Agora insira o diretório onde eles serão salvos após conversão -> "
echo TARGET set as %TargetDir%
echo.
echo Pressione qualquer tecla para iniciar o processo
pause>nul
cd /d %SourceDir%
for %%f in (*.flv) do ffmpeg -i "%SourceDir%\%%f" -c copy -copyts "%TargetDir%\%%f.mp4"
echo.
echo Feito, pressione qualquer tecla para fechar o conversor...
pause>nul

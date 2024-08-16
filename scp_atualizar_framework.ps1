﻿# Script para atualizar o Net. Framework
# Cabeçalho
#----------------------------------------------------------------------------------------------
Write-Host "╔" -NoNewline -ForegroundColor Cyan
write-host ("═" * 120) -NoNewline -ForegroundColor Cyan
write-host "╗" -ForegroundColor Cyan  

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Atualizar") -NoNewline
Write-Host ("{0,-86} " -f "NET Framework") -NoNewline -ForegroundColor Yellow
Write-Host "║" -ForegroundColor Cyan

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Copyright") -NoNewline
Write-Host ("{0,-86} " -f "2023 - Evandro Campanhã") -NoNewline -ForegroundColor Yellow
Write-Host "║" -ForegroundColor Cyan

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Script") -NoNewline
Write-Host ("{0,-86} " -f $MyInvocation.MyCommand.Path) -NoNewline -ForegroundColor White
Write-Host "║" -ForegroundColor Cyan

Write-Host "╠" -NoNewline -ForegroundColor Cyan
write-host ("═" * 120) -NoNewline -ForegroundColor Cyan
write-host "╣" -ForegroundColor Cyan
#----------------------------------------------------------------------------------------------

# Iniciar Ações
#----------------------------------------------------------------------------------------------
# Obtém o diretório atual do script
$currentScriptDirectory = $PSScriptRoot
# Adiciona o subdiretório "updates"
$updatesDirectory = Join-Path $currentScriptDirectory "updates\framework"
# Se precisar do caminho completo do script
$currentScriptPath = $MyInvocation.MyCommand.Path

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Diretorio das Atualizações") -NoNewline
Write-Host ("{0,-86} " -f $updatesDirectory) -NoNewline -ForegroundColor Green
Write-Host "║" -ForegroundColor Cyan

Write-Host "╠" -NoNewline -ForegroundColor Cyan
write-host ("═" * 120) -NoNewline -ForegroundColor Cyan
write-host "╣" -ForegroundColor Cyan

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Tarefa") -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-86} " -f "Arquivo") -NoNewline -ForegroundColor Cyan
Write-Host "║" -ForegroundColor Cyan

Write-Host "║" -NoNewline -ForegroundColor Cyan
write-host ("═" * 120) -NoNewline -ForegroundColor Gray
Write-Host "║" -ForegroundColor Cyan

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Instalando") -NoNewline -ForegroundColor White
Write-Host ("{0,-86} " -f "NET Framework 3.5") -NoNewline -ForegroundColor Green
Write-Host "║" -ForegroundColor Cyan
Start-Process -FilePath $updatesDirectory\"dotnetfx35.exe" -ArgumentList "/quiet" -Wait

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Instalando") -NoNewline -ForegroundColor White
Write-Host ("{0,-86} " -f "NET Framework 4.5") -NoNewline -ForegroundColor Green
Write-Host "║" -ForegroundColor Cyan
Start-Process -FilePath $updatesDirectory\"Net-Framework 4.5.exe" -ArgumentList "/quiet" -Wait

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Instalando") -NoNewline -ForegroundColor White
Write-Host ("{0,-86} " -f "NET Framework 4.6") -NoNewline -ForegroundColor Green
Write-Host "║" -ForegroundColor Cyan
Start-Process -FilePath $updatesDirectory\"Net-Framework 4.6.exe" -ArgumentList "/quiet" -Wait

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Instalando") -NoNewline -ForegroundColor White
Write-Host ("{0,-86} " -f "NET Framework 4.6.1") -NoNewline -ForegroundColor Green
Write-Host "║" -ForegroundColor Cyan
Start-Process -FilePath $updatesDirectory\"Net-Framework 4.6.1.exe" -ArgumentList "/quiet" -Wait

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Instalando") -NoNewline -ForegroundColor White
Write-Host ("{0,-86} " -f "NET Framework 4.7.1") -NoNewline -ForegroundColor Green
Write-Host "║" -ForegroundColor Cyan
Start-Process -FilePath $updatesDirectory\"Net-Framework 4.7.1.exe" -ArgumentList "/quiet" -Wait

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Instalando") -NoNewline -ForegroundColor White
Write-Host ("{0,-86} " -f "NET Framework 4.7.2") -NoNewline -ForegroundColor Green
Write-Host "║" -ForegroundColor Cyan
Start-Process -FilePath $updatesDirectory\"Net-Framework 4.7.2.exe" -ArgumentList "/quiet" -Wait

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Instalando") -NoNewline -ForegroundColor White
Write-Host ("{0,-86} " -f "NET Framework 4.7.3") -NoNewline -ForegroundColor Green
Write-Host "║" -ForegroundColor Cyan
Start-Process -FilePath $updatesDirectory\"Net-Framework 4.7.3.exe" -ArgumentList "/quiet" -Wait

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Instalando") -NoNewline -ForegroundColor White
Write-Host ("{0,-86} " -f "NET Framework 4.8") -NoNewline -ForegroundColor Green
Write-Host "║" -ForegroundColor Cyan
Start-Process -FilePath $updatesDirectory\"Net-Framework 4.8.exe" -ArgumentList "/quiet" -Wait

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Instalando") -NoNewline -ForegroundColor White
Write-Host ("{0,-86} " -f "NET Framework 4.8.1") -NoNewline -ForegroundColor Green
Write-Host "║" -ForegroundColor Cyan
Start-Process -FilePath $updatesDirectory\"Net-Framework 4.8.1.exe" -ArgumentList "/quiet" -Wait
#----------------------------------------------------------------------------------------------

# Aplicando alterações
#----------------------------------------------------------------------------------------------
# Aplicar alterações
rundll32.exe user32.dll, UpdatePerUserSystemParameters

# Verificar se o processo explorer está em execução
$explorerProcess = Get-Process -Name explorer -ErrorAction SilentlyContinue

if ($explorerProcess) {
    Write-Host "║" -NoNewline -ForegroundColor Cyan
    Write-Host ("{0,-30} : " -f " Reiniciando Processo") -NoNewline
    Write-Host ("{0,-86} " -f "Windows Explorer") -NoNewline -ForegroundColor Cyan
    Write-Host "║" -ForegroundColor Cyan
    Stop-Process -Name explorer -Force -ErrorAction SilentlyContinue
    Start-Process explorer -WindowStyle Hidden
} else {
    Write-Host "║" -NoNewline -ForegroundColor Cyan
    Write-Host ("{0,-30} : " -f " Iniciando Processo") -NoNewline
    Write-Host ("{0,-86} " -f "Windows Explorer") -NoNewline -ForegroundColor Cyan
    Write-Host "║" -ForegroundColor Cyan
    Start-Process explorer -WindowStyle Hidden
}
#----------------------------------------------------------------------------------------------

# Rodape
#----------------------------------------------------------------------------------------------
Write-Host "╠" -NoNewline -ForegroundColor Cyan
Write-Host ("═" * 120) -NoNewline -ForegroundColor Cyan
Write-Host "╣" -ForegroundColor Cyan  

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Processo") -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-86} " -f "Finalizado") -NoNewline -ForegroundColor Cyan
Write-Host "║" -ForegroundColor Cyan

Write-Host "╚" -NoNewline -ForegroundColor Cyan
Write-Host ("═" * 120) -NoNewline -ForegroundColor Cyan
Write-Host "╝" -ForegroundColor Cyan
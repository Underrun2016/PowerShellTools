﻿Write-Host "╔" -NoNewline -ForegroundColor Cyan
write-host ("═" * 120) -NoNewline -ForegroundColor Cyan
write-host "╗" -ForegroundColor Cyan  
Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Operação") -NoNewline
Write-Host ("{0,-86} " -f "Limpar dados do Google Chrome") -NoNewline -ForegroundColor Yellow
Write-Host "║" -ForegroundColor Cyan

Write-Host "║" -NoNewline -ForegroundColor Yellow
Write-Host ("{0,-30} : " -f " Copyright") -NoNewline
Write-Host ("{0,-86} " -f "2023 - Evandro Campanhã") -NoNewline -ForegroundColor Yellow
Write-Host "║" -ForegroundColor Yellow

$computerName = (Get-ComputerInfo).CsName
Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Computador") -NoNewline
Write-Host ("{0,-86} " -f $computerName) -NoNewline -ForegroundColor White
Write-Host "║" -ForegroundColor Cyan

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Script") -NoNewline
Write-Host ("{0,-86} " -f $MyInvocation.MyCommand.Path) -NoNewline -ForegroundColor White
Write-Host "║" -ForegroundColor Cyan

Write-Host "╠" -NoNewline -ForegroundColor Cyan
write-host ("═" * 120) -NoNewline -ForegroundColor Cyan
write-host "╣" -ForegroundColor Cyan

# Verificar se o Google Chrome está instalado
$chromeInstalled = Test-Path "C:\Program Files\Google\Chrome\Application\chrome.exe"


if ($chromeInstalled) {
Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Google Chrome Instalado") -NoNewline -ForegroundColor White
Write-Host ("{0,-86} " -f "Limpando Configurações" ) -NoNewline -ForegroundColor Gray
Write-Host "║" -ForegroundColor Cyan

# Encerrar processos do Google Chrome
$null=Stop-Process -Name "chrome" -Force -ErrorAction SilentlyContinue

# Remover diretório de dados do Google Chrome (isso irá redefinir todas as configurações)
$chromeDataDir = [System.IO.Path]::Combine($env:LOCALAPPDATA, 'Google\Chrome\User Data')
$null=Remove-Item -Path $chromeDataDir -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Google Chrome") -NoNewline -ForegroundColor White
Write-Host ("{0,-86} " -f "Configurações Excluídas" ) -NoNewline -ForegroundColor Green
Write-Host "║" -ForegroundColor Cyan
} else {
Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Google Chrome") -NoNewline -ForegroundColor White
Write-Host ("{0,-86} " -f "Não está instalado" ) -NoNewline -ForegroundColor Yellow
Write-Host "║" -ForegroundColor Cyan
}
#Final do Script
Write-Host "╠" -NoNewline -ForegroundColor Cyan
write-host ("═" * 120) -NoNewline -ForegroundColor Cyan
write-host "╣" -ForegroundColor Cyan  

Write-Host "║" -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-30} : " -f " Processo")   -NoNewline -ForegroundColor Cyan
Write-Host ("{0,-86} " -f "Finalizado") -NoNewline -ForegroundColor Cyan
Write-Host "║" -ForegroundColor Cyan

Write-Host "╚" -NoNewline -ForegroundColor Cyan
write-host ("═" * 120) -NoNewline -ForegroundColor Cyan
write-host "╝" -ForegroundColor Cyan 
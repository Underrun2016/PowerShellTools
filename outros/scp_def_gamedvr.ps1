﻿# Script para habilitar ou desabilitar o GameDVR
param (
    [string]$acao = "0" # "0" - Desabilitar, "1" - Habilitar
)

# Verificar se a ação é válida
if ($acao -ne "0" -and $acao -ne "1") {
    Write-Host "Ação inválida. Use '0' para desabilitar ou '1' para habilitar."
    Exit
}

# Converter a ação para um valor numérico
$regValue = [int]$acao

# Caminho do Registro para o GameDVR
$regPath = "HKCU:\System\GameConfigStore"
$regName = "GameDVR_Enabled"

# Verificar se o caminho no Registro existe, criar se não existir
if (-not (Test-Path $regPath)) {
    Write-Host "Caminho do Registro não encontrado."
    Exit
}

# Criar ou atualizar a entrada no Registro
$null = New-ItemProperty -Path $regPath -Name $regName -Value $regValue -PropertyType DWORD -Force

# Mensagem de confirmação
if ($regValue -eq 0) {
    Write-Host "GameDVR desabilitado."
} else {
    Write-Host "GameDVR habilitado."
}

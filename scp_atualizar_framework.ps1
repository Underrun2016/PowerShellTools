﻿<#
    Função: Atualizar versões do Net. Framework
	Copyright: © Plena Soluções - 2024
	Date: Agosto/2024

	Licenciamento:
	Este script é fornecido "como está", sem qualquer garantia de qualquer tipo,
	expressa ou implícita, incluindo, mas não se limitando às garantias de 
	comercialização, adequação a um determinado fim e não violação. O uso deste 
	script é totalmente gratuito, mas você deve manter os créditos ao autor original.
	
	Seriais/Keys:
	Os Seriais/Keys para licenciamento de software contidos neste ou em outros
	arquivos são meramente ilustrativos para a utilização do script, sendo assim cabe
	ao utilizador do script alterar estas chaves para uma válida que represente o 
	licenciamento vigente.

	Bugs & Correções
	Em caso de Bugs encontrado pedimos a gentileza de informar por email para que possamos 
	analizar e gerar atualizações corretivas.

	Autor: Evandro Campanhã
	Contato: aurora.erp@gmail.com
	------------------------------------------------------------------------------
#>

# Cabeçalho
#----------------------------------------------------------------------------------------------
# Obter o diretório do script atual
$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Path -Parent

# Obter o nome do script atual
$scriptName = [System.IO.Path]::GetFileName($MyInvocation.MyCommand.Path)

# Construir o caminho completo para o script 'scp_script_cabecalho.ps1'
$cabecalhoScriptPath = Join-Path -Path $scriptDirectory -ChildPath "scp_script_cabecalho.ps1"

# Executar o script de cabeçalho
& $cabecalhoScriptPath -Script $scriptName -Titulo "Atualizar o Microsoft Net. Framework"
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
Write-Host ("{0,-30} : " -f "Diretorio das Atualizações") -NoNewline
Write-Host ("{0,-86} " -f $updatesDirectory) -NoNewline -ForegroundColor white
Write-Host "║" -ForegroundColor Cyan

Write-Host "╠" -NoNewline -ForegroundColor Cyan
Write-Host ("═" * 120) -NoNewline -ForegroundColor Cyan
Write-Host "╣" -ForegroundColor Cyan


# Definindo a lista de instaladores
$installers = @(
    @{ Name = "Microsoft NET. Framework 3.5"; Executable = "dotnetfx35.exe"; Switch = "/q /norestart" },
    @{ Name = "Microsoft NET. Framework 4.5"; Executable = "Net-Framework 4.5.exe"; Switch = "/quiet /norestart" },
    @{ Name = "Microsoft NET. Framework 4.6"; Executable = "Net-Framework 4.6.exe"; Switch = "/quiet /norestart" },
    @{ Name = "Microsoft NET. Framework 4.7.1"; Executable = "Net-Framework 4.7.1.exe"; Switch = "/quiet /norestart" },
    @{ Name = "Microsoft NET. Framework 4.7.2"; Executable = "Net-Framework 4.7.2.exe"; Switch = "/quiet /norestart" },
    @{ Name = "Microsoft NET. Framework 4.7.3"; Executable = "Net-Framework 4.7.3.exe"; Switch = "/quiet /norestart" },
    @{ Name = "Microsoft NET. Framework 4.8"; Executable = "Net-Framework 4.8.exe"; Switch = "/quiet /norestart" },
    @{ Name = "Microsoft NET. Framework 4.8.1"; Executable = "Net-Framework 4.8.1.exe"; Switch = "/quiet /norestart" }
)

# Loop para instalar cada um
foreach ($installer in $installers) {
    Write-Host "║" -NoNewline -ForegroundColor Cyan
    Write-Host ("{0,-30} : " -f "Instalando") -NoNewline -ForegroundColor White
    Write-Host ("{0,-86} " -f $installer.Name) -NoNewline -ForegroundColor Green
    Write-Host "║" -ForegroundColor Cyan

    $installerPath = Join-Path $updatesDirectory $installer.Executable

    if (Test-Path $installerPath) {
        Start-Process -FilePath $installerPath -ArgumentList $installer.Switch -Wait
    } else {
        Write-Host "║" -NoNewline -ForegroundColor Cyan
        Write-Host ("{0,-30} : " -f " Aviso") -NoNewline -ForegroundColor Yellow
        Write-Host ("{0,-86} " -f "$($installer.Name) não encontrado no diretório.") -NoNewline -ForegroundColor Red
        Write-Host "║" -ForegroundColor Cyan
    }
}
#----------------------------------------------------------------------------------------------

# Aplicando alterações
#----------------------------------------------------------------------------------------------
rundll32.exe user32.dll, UpdatePerUserSystemParameters
#----------------------------------------------------------------------------------------------

# Rodapé
#----------------------------------------------------------------------------------------------
# Obter o diretório do script atual
$CurrentScriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Path -Parent

# Construir o caminho completo para o script 'scp_script_rodape.ps1'
$rodapeScriptPath = Join-Path -Path $CurrentScriptDirectory -ChildPath "scp_script_rodape.ps1"

# Executar o script de rodapé
& $rodapeScriptPath
#----------------------------------------------------------------------------------------------
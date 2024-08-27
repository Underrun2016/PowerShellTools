﻿<#
    Função: Rodapé para scripts
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
param (
    [string]$Titulo = "Processo",
    [string]$Status = "Finalizado"
)
# Rodape
#----------------------------------------------------------------------------------------------
Write-Host "╠" -NoNewline -ForegroundColor Cyan
write-host ("═" * 120) -NoNewline -ForegroundColor Cyan
write-host "╣" -ForegroundColor Cyan

Write-Host "║" -NoNewline -ForegroundColor Yellow
Write-Host ("{0,-30} : " -f $Titulo) -NoNewline -ForegroundColor White
Write-Host ("{0,-86} " -f $Status) -NoNewline -ForegroundColor Green
Write-Host "║" -ForegroundColor Yellow

Write-Host "╚" -NoNewline -ForegroundColor Yellow
Write-Host ("═" * 120) -NoNewline -ForegroundColor Yellow
Write-Host "╝" -ForegroundColor Yellow
#----------------------------------------------------------------------------------------------
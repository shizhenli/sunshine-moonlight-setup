param([string]$Root = (Split-Path $PSScriptRoot -Parent))
$ErrorActionPreference='Stop'
$shared=Join-Path $Root '_shared'
$files=@('layouts\_default\baseof.html','layouts\_default\single.html','layouts\_default\list.html','layouts\index.html','static\css\site.css','static\robots.txt','static\favicon.svg')
Get-ChildItem -LiteralPath $Root -Directory | Where-Object {$_.Name -ne '_shared' -and $_.Name -ne 'scripts'} | ForEach-Object {
  foreach($rel in $files){
    $src=Join-Path $shared $rel; $dst=Join-Path $_.FullName $rel
    New-Item -ItemType Directory -Force -Path (Split-Path $dst -Parent)|Out-Null
    Copy-Item -LiteralPath $src -Destination $dst -Force
  }
  Write-Output "synced $($_.Name)"
}

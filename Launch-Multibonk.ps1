param(
    [string]$GameDir = $PSScriptRoot,
    [ValidateRange(1,65535)][int]$Port = 35565,
    [ValidateRange(1,8)][int]$MaxClients = 8,
    [switch]$Dedicated
)
$ErrorActionPreference = 'Stop'
$exe = Join-Path $GameDir 'Megabonk.exe'
if (!(Test-Path -LiteralPath $exe)) { throw 'Pass -GameDir with your owned MegaBonk installation folder.' }
$arguments = @('--multibonk-port', [string]$Port, '--multibonk-max-clients', [string]$MaxClients)
if ($Dedicated) { $arguments += '--multibonk-dedicated' }
$style = if ($Dedicated) { 'Hidden' } else { 'Normal' }
Start-Process -FilePath $exe -WorkingDirectory $GameDir -ArgumentList $arguments -WindowStyle $style

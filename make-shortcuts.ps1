$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$out  = Join-Path $root 'Shortcuts'
New-Item -ItemType Directory -Force -Path $out | Out-Null
$sh = New-Object -ComObject WScript.Shell

Get-ChildItem -Path $root -Filter *.bat | ForEach-Object {
    $name = $_.BaseName
    $ico  = Join-Path $root "icons\$name.ico"
    $lnk  = $sh.CreateShortcut((Join-Path $out "$name.lnk"))
    $lnk.TargetPath       = "$env:SystemRoot\System32\cmd.exe"
    $lnk.Arguments        = '/c "' + $_.FullName + '"'
    $lnk.WorkingDirectory = $root
    $lnk.Description      = "Launch $name"
    if (Test-Path $ico) { $lnk.IconLocation = "$ico,0" }
    $lnk.Save()
    Write-Host "  created  $name.lnk"
}

Write-Host ""
Write-Host "Done. Shortcuts are in: $out"
Write-Host "Drag any of them onto your taskbar to pin (or right-click > Pin to taskbar)."

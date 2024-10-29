﻿$PackageName = "Teams-Backgrounds"
$Version = "1"

$Path_4Log = "$ENV:LOCALAPPDATA\_MEM"
Start-Transcript -Path "$Path_4Log\Log\$PackageName-install.log" -Force
$ErrorActionPreference = "Stop"

try{
    # Lokaler Ordner 
    $TeamsBG_Folder = "$env:APPDATA\Microsoft\Teams\Backgrounds\Uploads"
    
    # Sicherstelen, das der Ordner vorhanden ist
    New-Item -ItemType directory -Path $TeamsBG_Folder -Force
    
    # Hintergründe kopieren
    Copy-Item -path '.\bg\*' -Destination $TeamsBG_Folder -Recurse -Force

    # Validation File
    New-Item -Path "$Path_4Log\Validation\$PackageName" -ItemType "file" -Value $Version -Force
}catch{
    Write-Host "_____________________________________________________________________"
    Write-Host "ERROR"
    Write-Host "$_"
    Write-Host "_____________________________________________________________________"
}

Stop-Transcript
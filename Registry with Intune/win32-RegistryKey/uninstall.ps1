$PackageName = "RegistryKey"
Start-Transcript -Path "$env:ProgramData\Microsoft\IntuneManagementExtension\Logs\$PackageName-unscript.log" -Force

$Path = "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power"
$Key = "HiberbootEnabled"
$KeyFormat = "dword"
$Value = "0"

if(!(Test-Path $Path)){New-Item -Path $Path -Force}
if(!$Key){Set-Item -Path $Path -Value $Value
}else{Set-ItemProperty -Path $Path -Name $Key -Value $Value -Type $KeyFormat}


Stop-Transcript
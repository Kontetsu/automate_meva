# Made by Erget Kabaj
# This Script is about enabling the MEVA funtionalities automaticly

# #Check Services
# $check_svc = Write-Host "Service up"#Get-Service -Name WinRM #FacilNT, FacilTomcat
# $stop_svc = Write-Host "Stoping services"#Stop-Service -Name WinRM #FacilNT, FacilTomcat
# $start_svc = Write-Host "Start service"#Start-Service -Name #FacilNT, FacilTomcat

# Files to be copied for biologin
$bio_source = "C:\Users\erget\OneDrive\Desktop\important_file1.txt"
$bio_dest = 'c:\temp\important_file.txt'

# Options to chose
$q1 = "1. Biologin"
$q2 = "2. Digital Signature"
$q3 = "3. Portret Retrival"

$print = Read-Host -promt "PLease chose the folowing options to enable: `n $q1 `n $q2`n $q3"

function biologin {
    Get-Service -Name WinRM
    #Stop Services
    Copy-Item -Path $bio_source -Destination $bio_dest
    Write-Output "Files Copied"
}

function digital_signature {
    Get-Service -Name WinRM
    #Stop Services
    Copy-Item -Path $bio_source -Destination $bio_dest
    Write-Output "Files Copied"
}

function portret_retrival {
    Get-Service -Name WinRM
    #Stop Services
    Copy-Item -Path $bio_source -Destination $bio_dest
    Write-Output "Files Copied"
}


if ($print -eq 1) {
    Write-Host "you have chosen: $q1"
    biologin
}
elseif ($print -eq 2) {
    Write-Host "you have chosen: $q2 "
    digital_signature
}
elseif ($print -eq 3) {
    Write-Host "you have chosen: $q3  "
    portret_retrival
}




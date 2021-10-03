$bio_source = "C:\Users\erget\OneDrive\Desktop\important_file1.txt"
$bio_dest = 'c:\temp\important_file.txt'

[xml]$XmlDocument = Get-Content -Path $FilePath

# Options to chose
$q1 = "1. Biologin"
$q2 = "2. Digital Signature"
$q3 = "3. Portret Retrival"

$print = Read-Host -Prompt "PLease chose the folowing options to see enabled or disabled features: `n $q1 `n $q2`n $q3"

$FilePath = "C:\Users\Ergi\Documents\automate_meva\test.xml"
# $bio_enable = Read-Host -Prompt "Pres 1 to Disable Biologin"
# $bio_disable = Read-Host -Prompt "Pres 2 to Enable Biologin"

function bio_login_check()
   {
        if ($XmlDocument.catalog.book.price[5] = '50$') {
            $enbl = Read-Host -Prompt "ok"
        }
        # elseif ($enbl -eq 2 ) {
        #     bio_login_disable
        #         # Write-Host "Saved into " $FilePath -ForegroundColor Green 
        #     exit
        # }
#         if ($XmlDocument.catalog.book.price[5] = '55$') {
#             $disa = Read-Host -Prompt "Biolagin Disabled, Pres 1 to Enable it: "
#             }
#             elseif ($disa -eq 1) {
#                 bio_login_enable
#                 Write-Host "Saved into " $FilePath -ForegroundColor Green 
#         }
 }
    
function bio_login_enable()
   {
        if ($XmlDocument.catalog.book[5].price = '50$') {
           Write-Host "biologin Enabled"
           $XmlDocument.Save($FilePath)
       }

    Write-Host "Saved into " $FilePath -ForegroundColor Green  
}

function bio_login_disable()
   {
        if ($XmlDocument.catalog.book[5].price = '55$') {
           Write-Host "biologin Disabled"
           $XmlDocument.Save($FilePath)
       }

    Write-Host "Saved into " $FilePath -ForegroundColor Green  
}


if ($print -eq 1) {
    Write-Host "you have chosen: $q1"
    Write-Host "Checking if Biologin is Enabled or disabled"
    bio_login_check
}




elseif ($print -eq 2) {
    Write-Host "you have chosen: $q2 "
    digital_signature
}
elseif ($print -eq 3) {
    Write-Host "you have chosen: $q3  "
    portret_retrival
}
#################################################################################
# Made by Erget Kabaj                                                           #
# This script enables or disables the features by editing the xml file          #
# and saving the files after editing                                            #
#################################################################################

# Enable the powershell to read xml files
$FilePath = "C:\Users\Ergi\Documents\automate_meva\test.xml"
$XmlDocument = new-object System.Xml.XmlDocument
[xml]$XmlDocument = Get-Content -Path $FilePath

# Options to chose
$q1 = "1. Biologin"
$q2 = "2. Digital Signature"
$q3 = "3. Portret Retrival"

$print = Read-Host -Prompt "PLease chose the folowing options to see enabled or disabled features: `n $q1 `n $q2`n $q3"

# File to read xml from


# Declare the value of the xmlf
$bio_enbl = $XmlDocument.catalog.book.price[5]
$bio_dis = $XmlDocument.catalog.book.price[5]

# Function to check if biologin is enabled or not
function bio_login_check()
   {
        if ($bio_enbl -eq '50$') {
            Write-Host "Biologin Enabled, We are going to Disable it now." 
            Start-Sleep -Seconds 5
            bio_login_disable
        }
        elseif ($bio_dis -eq '55$') {
            Write-Host "Biolagin Disabled, We are going to Enable it now" 
            Start-Sleep -Seconds 5
            bio_login_enable
        }break
}

# Enabling biologin
function bio_login_enable()
   {
    $XmlDocument.catalog.book[5].price = '50$'  # Set the value that we want
    Write-Host "biologin Enabled" -ForegroundColor Green
    $XmlDocument.Save($FilePath)    # saves the xmf file to the same path with the same name
    Write-Host "Saved into " $FilePath -ForegroundColor Green  
}

# Disabling Biologin
function bio_login_disable()
   {
    $XmlDocument.catalog.book[5].price = '55$'
    Write-Host "biologin Disabled" 
    $XmlDocument.Save($FilePath)
    Write-Host "Saved into " $FilePath -ForegroundColor Green  
}

$disable = $XmlDocument.catalog.book.price[6]
$enable = $XmlDocument.catalog.book.price[6]
function digital_sig_check()
   {
        if ($disable -eq 5) {
            Write-Host "Digital Signature Disabled, We are going to Enable it now."
            Start-Sleep -Seconds 5
            digital_sig_enable
        }
        elseif ($enable -eq 4.95) {
            Write-Host "Digital Signature Enabled, We are going to Disable it now"
            Start-Sleep -Seconds 5
            digital_sig_disable
        }break
}


function digital_sig_enable()
   {
    $XmlDocument.catalog.book[6].price = '4.95'
    Write-Host "Digital Signature Enabled " -ForegroundColor Green  
    $XmlDocument.Save($FilePath)
    Write-Host "Saved into " $FilePath -ForegroundColor Green  
}

function digital_sig_disable()
   {
    $XmlDocument.catalog.book[6].price = '5'
    Write-Host "Digital Signature Disabled " -ForegroundColor Red
    $XmlDocument.Save($FilePath)
    Write-Host "Saved into " $FilePath -ForegroundColor Green  
}


$portret_off = $XmlDocument.catalog.book.genre[11]
$portret_on = $XmlDocument.catalog.book.genre[11]
function portret_check()
   {
        if ($portret_on -eq "Laptop") {
            Write-Host "Portret Disabled, We are going to Enable it now."
            Start-Sleep -Seconds 5
            portret_enable
        }
        elseif ($portret_off -eq "Computer") {
            Write-Host "Portret Enabled, We are going to Disable it now"
            Start-Sleep -Seconds 5
            portret_disable
        }break
}


function portret_enable()
   {
    $XmlDocument.catalog.book[11].genre = "Computer"
    Write-Host "Portret Enabled " -ForegroundColor Green  
    $XmlDocument.Save($FilePath)
    Write-Host "Saved into " $FilePath -ForegroundColor Green  
}

function portret_disable()
   {
    $XmlDocument.catalog.book[11].genre = "Laptop"
    Write-Host "Portret Disabled " -ForegroundColor Red
    $XmlDocument.Save($FilePath)
    Write-Host "Saved into " $FilePath -ForegroundColor Green  
}

# Call the functions Above
if ($print -eq 1) {
    Write-Host "you have chosen: $q1"
    Write-Host "Checking if Biologin is Enabled or disabled"
    bio_login_check
}

if ($print -eq 2) {
    Write-Host "you have chosen: $q2 "
    Write-Host "Checking if Digital Signature is Enabled or Disabled"
    digital_sig_check
}

elseif ($print -eq 3) {
    Write-Host "you have chosen: $q3  "
    Write-Host "Checking if Portret is Enabled or Disabled"
    portret_check
}
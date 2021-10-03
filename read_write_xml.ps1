$FilePath = "C:\Users\erget\OneDrive\Documents\automate_meva\test.xml"

$XmlDocument = new-object System.Xml.XmlDocument
[xml]$XmlDocument = Get-Content -Path $FilePath

$XmlDocument.catalog.book.genre[11]


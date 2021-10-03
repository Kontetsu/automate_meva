$FilePath = "C:\Users\Ergi\Documents\automate_meva\test.xml"

#Select-Xml -Path $Path -XPath "/catalog/book/author" | ForEach-Object { $_.Node.InnerXML }



#Select-Xml -Path $Path -XPath "/catalog/book/author" | Where-Object -Like {"price".$_Node.InnerXML}


#[xml]$XmlDocument = Get-Content -Path C:\Users\Ergi\Documents\automate_meva\test.xml

#$XmlDocument.catalog.book.price[0]

$Selector = "//book[@id='bk101']"

$NewTutorialTopic = "10"

function write_to_xml()
   {
       
      [xml]$XmlDocument = Get-Content -Path $FilePath
      $XmlDocument.catalog.book[5].author = 'audubon, j.'
      $XmlDocument.catalog.book[5].title = 'The Birds of America'
      $XmlDocument.catalog.book[5].price = '50$'
      $XmlDocument.Save("$FilePath") 

      Write-Host "Saved into " $FilePath -ForegroundColor Green        

   }

write_to_xml
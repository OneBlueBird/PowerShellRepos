clear;
Set-ExecutionPolicy unrestricted

class BooksReader
{
    [String] $BookPath;

    ## Default Constructor
    BooksReader()
    {
    }
    
    ## Method that sets file path of Xml Document
    SetFilePath([String]$filePath)
    {
        $this.BookPath = $filePath;
    }

    PrintBookPath()
    {
        Write-Host ($this.BookPath);
    }

    ReadXmlDocument()
    {
        Set-Location -Path "C:\msk\";  ## Set where the location of Xml file exist
        $bookXmlDoc = New-Object System.Xml.XmlDocument;
        $file = Resolve-Path($this.BookPath);

        [xml]$bookContents = Get-Content($file);

        Write-Host($bookContents.InnerXml);
    }
}


[BooksReader]$varBooksObj = [BooksReader]::new();
$varBooksObj.setFilePath("C:\msk\powershell\books.xml");
Write-Host("*" * 200) -ForegroundColor Cyan;
$varBooksObj.PrintBookPath();
Write-Host("*" * 200) -ForegroundColor Cyan;
$varbooksObj.ReadXmlDocument();

Write-Host("*" * 200) -ForegroundColor Cyan;

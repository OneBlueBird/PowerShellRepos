
clear;

Set-ExecutionPolicy Unrestricted

enum ModulesTobeInstalled
{
    Infrastructure = 1
    Core = 2
    Web = 3
    APIs = 4
    Sharedservice = 5
    Database = 6
    Platform = 7
    All = 8
}

class StartupMain
{
    PrintEnums()
    {
        $this.PrintLines()
        Write-Host ("Inside PrintEnums Method");

        $this.PrintLines();
        Write-Host ([ModulesTobeInstalled].GetEnumNames());
        Write-Host ([ModulesTobeInstalled].GetEnumValues());
        $this.PrintLines();
        
        foreach($val in [ModulesTobeInstalled].GetEnumValues())
        {
            Write-Host ($val);
        }

        $this.PrintLines();

    }

    PrintLines()
    {
        Write-Host ("-" *190) -ForegroundColor Cyan;
    }
}

## Technique to instantiate a class
[StartupMain]$varStartupMain = [StartupMain]::new();

## Set all the parameters passed to StartupMain class
$varStartupMain.PrintEnums();

Write-Host ("-------------------------------------------------");

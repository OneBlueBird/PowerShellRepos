Set-ExecutionPolicy Unrestricted

## PowerShell class that has a property, constructor and a function to display message to console :)
class StartupMain
{
    # Property that holds single variable of type string
    [string] $message;

    ## Default Constructor
    StartupMain([string]$paramMessage)
    {
        $this.message = $paramMessage;
    }

    # Function that displays message. No return values
    PrintMessage()
    {
        Write-Host ("Hello " + $this.message);
    }
}

## Technique to instantiate a class
[StartupMain]$varStartupMain = [StartupMain]::new("PowerShell");

## Technique to invoke a method on an intantiated class
$varStartupMain.PrintMessage();

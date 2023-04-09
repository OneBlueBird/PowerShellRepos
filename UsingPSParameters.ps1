$param1 = $args[0];
$param2 = $args[1];
$param3 = $args[2];

function PrintStars()
{
    Write-Host("*"* 190) -ForegroundColor Yellow;
}


PrintStars;

Write-Host("Parameter1 passed : " + $param1);
Write-Host("Parameter2 passwe : " + $param2);
Write-Host("Parameter2 passwe : " + $param3);

PrintStars;

## How to run this script
.\UsingPSParameters.ps1 Hello World PowerShell
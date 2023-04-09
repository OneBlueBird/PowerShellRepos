clear;

## How do you gather current version of PowerShell in the target environment ?
## I use below command to gain insights

Write-Host ("-" *190) -ForegroundColor Cyan;
$PSVersiontable

Write-Host ("-" *190) -ForegroundColor Cyan;
Write-Host("Current PowerShell installed version : " + $PSVersiontable.PSVersion) -ForegroundColor Yellow;
Write-Host ("-" *190) -ForegroundColor Cyan;


Write-Host ("PSVersion : " + $PSVersiontable.PSVersion);
Write-Host ("-" *190) -ForegroundColor Cyan;

Write-Host ("PSVersion Major number : " + $PSVersiontable.PSVersion.Major);
Write-Host ("PSVersion Minor number : " + $PSVersiontable.PSVersion.Minor);
Write-Host ("-" *190) -ForegroundColor Cyan;
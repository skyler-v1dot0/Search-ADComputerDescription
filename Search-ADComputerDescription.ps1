#Search for AD computer by Description then display the computer name and description 

$desc = Read-Host "Enter description info you would like to query for"

Write-Host "Query for AD computer object with '$desc' in the description" -ForegroundColor Green 

Get-ADComputer -Filter "Description -like '*$desc*'" -Properties Name,Description | Select Name,Description

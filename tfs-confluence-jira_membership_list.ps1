

$user = $args[0]
$user = $user -replace "@loandepot.com", ""
$user = $user -replace "@ldwholesale.com", ""
$userList = Get-ADUser $user -Properties memberof | Select-Object -ExpandProperty memberof 



foreach ($user in $userList) 
{
    ##Write-Output $user | Select-String -Pattern 'confluence'
    Write-Output $user | Select-String -Pattern 'jira'
}

Write-Output '------------------------'

foreach ($user in $userList) 
{
    Write-Output $user | Select-String -Pattern 'confluence'
}

Write-Output '------------------------'

foreach ($user in $userList) 
{
    Write-Output $user | Select-String -Pattern 'tfs'
}

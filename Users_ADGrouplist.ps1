$user = $args[0]
$user = $user -replace "@loandepot.com", ""
Get-ADUser $user -Properties memberof | Select-Object -ExpandProperty memberof 
(Get-ADUser $user -Properties *).memberof.Count
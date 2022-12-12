
$group = $args[0]
Get-ADGroup $group -Properties memberof | Select-Object -ExpandProperty memberof
(Get-ADGroup $group -Properties *).memberof.Count

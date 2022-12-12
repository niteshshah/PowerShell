
$group = $args[0]
Get-ADGroup $group -Properties member | Select-Object -ExpandProperty member 
(Get-ADGroup $group -Properties *).member.Count


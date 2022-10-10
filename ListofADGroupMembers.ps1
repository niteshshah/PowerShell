
Get-ADGroup 'jira_ProductOwnerBSA' -Properties member | Select-Object -ExpandProperty member 
(Get-ADGroup 'jira_ProductOwnerBSA' -Properties *).member.Count


#REF: https://blog.mastykarz.nl/custom-managed-properties-sharepoint-2013/
Add-PSSnapin Microsoft.SharePoint.Powershell

$ssa = Get-SPEnterpriseSearchServiceApplication
Get-SPEnterpriseSearchMetadataManagedProperty -SearchApplication $ssa | ? { $_.SystemDefined -eq $false } | Out-GridView
#REF: https://sharepoint.stackexchange.com/questions/16525/how-to-remove-orphaned-features

#Query Farm
Get-SPFeature | ? { $_.Scope -eq $null }

#Delete by DisplayName
$feature = Get-SPFeature | ? { $_.DisplayName -eq "My_Orphane_Feature" }
$feature.Delete()

#Delete All 
Get-SPFeature | ? { !$_.Scope -eq $null } | % { $_.Delete() }

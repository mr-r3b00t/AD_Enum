Get-ADUser -Filter * -Property Description,Enabled | Where-Object {$_.Enabled -like “true”} | FT Name, SamAccountName, Enabled, Description -Autosize

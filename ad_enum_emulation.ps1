#get AD computers just like another comrade would
get-adcomputer -filter * -properties passwordlastset | select name, ipv4address, passwordlastset | sort passwordlastset

#
Get-ADComputer -Filter 'operatingsystem -notlike "*server*" -and enabled -eq "true"' ` -Properties Name,Operatingsystem,IPv4Address,LastLogonDate | Sort-Object -Property Operatingsystem | Select-Object -Property Name,Operatingsystem,IPv4Address,LastLogonDate | Format-Table -AutoSize

#Get serves only
Get-ADComputer -Filter 'operatingsystem -like "*server*" -and enabled -eq "true"' ` -Properties Name,Operatingsystem,IPv4Address,LastLogonDate | Sort-Object -Property Operatingsystem | Select-Object -Property Name,Operatingsystem,IPv4Address,LastLogonDate | Format-Table -AutoSize

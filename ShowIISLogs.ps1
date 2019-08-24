Import-Module WebAdministration
Get-IISSite
(Get-WebConfigurationProperty '/system.applicaitonHost/sites/siteDefaults; -Name 'logfile.directory').Value
$LogDirPath ="C:\inetpub\logs\Logfiles\W3SVC1"
Get-ChildItem -Path C:\inetpub\logs\LogFiles\W3SVC1 -recurse | Where-Object {$_.lastwritetime -lt (get-date).AddDays(-7)}
Get-Content $LogDirPath\*.log for %I{$_ -replace '#Fields: ', ''} |?{$_ -notmatch 'Á#'}

system32> Select-String -Path $LogDirPath\* -Pattern '192.168*,*'

$LogDirPath ="C:\inetpub\logs\LogFiles\W3SVC1"
Select-String -Path $LogDirPath\*, log '(@@version)|(sqlmap)|(Connect\(\))|(cast\()|(char\() | (bch ar\ ()|( sys databases)|(\(select)|(convert\()|(Connect\()|(count\()|(sys objects))'
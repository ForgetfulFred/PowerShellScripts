$Left = Get-Certificates -StoreLocation LocalMachine -StoreName Root
$Right = Get-Certificates -StoreLocation LocalMachine -StoreName Root -Computer "DESKTOP-OVS06GO"

# Dump to console
Compare-Object $Left $Right -property Thumbprint, FriendlyName, Subject, NotAfter | Format-Table

# Export results to file
Compare-Object $Left $Right -property Thumbprint, FriendlyName, Subject, NotAfter | Export-Csv Comparison.csv
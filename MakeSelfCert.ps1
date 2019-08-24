$IssuedTo = "localhost"
$Password = "PickAPassword"
$OutputPath = "c:\powershell\"
$rootCA = Import-Certificate -FilePath C:\powershell\WdpTestCA.cer -CertStoreLocation Cert:\powershell\

# Create SSL cert signed by certificate authority
$IssuedToClean = $IssuedTo.Replace(":", "-").Replace(" ", "_")
$FilePath = $OutputPath + $IssuedToClean + ".pfx"
$Subject = "CN="+$IssuedTo
$cert = New-SelfSignedCertificate -certstorelocation cert:\powershell\ -Subject $Subject -DnsName $IssuedTo -Signer $rootCA -HashAlgorithm "SHA512"
$certFile = Export-PfxCertificate -cert $cert -FilePath $FilePath -Password (ConvertTo-SecureString -String $Password -Force -AsPlainText)
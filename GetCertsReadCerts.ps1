function Get-Certificates {
    Param(
            $Computer = $env:COMPUTERNAME,
            [System.Security.Cryptography.X509Certificates.StoreLocation]$StoreLocation,
            [System.Security.Cryptography.X509Certificates.StoreName]$StoreName
          ) 

    $Store = New-Object System.Security.Cryptography.X509Certificates.X509Store("\\$computer\$StoreName",$StoreLocation)
    $Store.Open([System.Security.Cryptography.X509Certificates.OpenFlags]"ReadOnly")
    $Store.Certificates
}

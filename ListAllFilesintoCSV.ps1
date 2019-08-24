dir -recurse | Where-Object { $_.PSIsContainer } | Select FullName,Mode,LastWriteTime,Length| convertto-csv | out-file "C:\FileList.csv" 
arp -a | Where-Object { $_.PSIsContainer } | Select Internet,PhysicalAddress,Type | convertto-csv | out-file "C:\Arplist.csv"
netstat -a  | Where-Object { $_.PSIsContainer } | Select Protocol,LocalAddress,ForeignAddress,State | convertto-csv | out-file "C:\Netstat.csv"
Get-WmiObject -Class Win32_SystemDriver | Where-Object -FilterScript {$_.State -eq 'Running'} | Select DisplayName,Name,State,Status,Started | convertto-csv | out-file "C:/drivers.log"

Get-WmiObject -Class Win32_SystemDriver | Select DisplayName,Name,State,Status,Started | convertto-csv | out-file "C:\Drivers.csv" -Encoding ASCII
Get-WmiObject -Class Win32_Bios | Select SMBIOSVersion,Manufacturer,Name,SerialNumber,Version | convertto-csv | Out-File "C:\Bios.csv" -Encoding ASCII
Get-WmiObject -Class Win32_Process | Select Genus,Class,SuperClass,Dynasty,RelPath,PropertyCount,Derivation,Server,Namespace,Path,Caption,CmdLine,CreationClassName,CreationDate,CSCreationClassName,CSName,Description,ExecutablePath,ExecutionState,Handle,HandleCount,InstallDate,KernelModeTime,MaxWorkingSetSize,MinWorkingSetSize,Name,OSCreationClassName,OSName,OtherOperationCount,OtherTransferCount,PageFaults,PageFileUsage,ParentProcessId,PeakPageFileUsage,PeakVirtSize,PeakWorkingSize,Priority,PrivatePageCount,ProcessID,QuotaNonPagedPoolUsage,QuotePagedPoolUsage,QuotePeakNonPagedPoolUsage,QuotaPeakPagedPoolUsage,ReadOperationCount,ReadTransferCount,SessionID,Status,TerminateDate,ThreadCount,UserModeTime,VirtSize,WindowsVersion,WorkingSetSize,WriteOperationCount,WriteTransferCount,PSComputerName,ProcessName,Handles,VM,WS | ConvertTo-Csv | out-file "C:\Processes.csv" - -Encoding ASCII
netstat -a -encode ASCII | convertto-csv | out-file "C:\Netstat.csv" -Encoding ASCII
arp -a | convertto-csv | out-file "C:\Arplist.csv" -Encoding ASCII
dir -recurse | Where-Object { $_.PSIsContainer } | Select FullName,Mode,LastWriteTime,Length| convertto-csv | out-file "C:\FileList.csv" 

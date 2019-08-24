#Format, assign, mount
diskpart.exe
create vdisk file="C:\WinPE.vhdx" maximum=1000
attach vdisk
create partition primary
assign letter=V
format fs=ntfs quick
exit

#Make Virtual Media
MakeWinPEMedia /UFD C:\WinPE_amd64 V:

#Detach Drive
diskpart
select vdisk file="C:\WinPE.vhdx"
detach vdisk
exit

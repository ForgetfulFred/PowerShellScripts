Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
ls -recurse | ? {$_.Name -like "*.wma" -and [bool]::Parse($wmplayer.newMedia($_.FullName).getItemInfo("Is_Protected")) }
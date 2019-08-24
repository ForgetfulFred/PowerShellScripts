cmd WebManagement.exe -SetCert <Path to .pfx file> <password for pfx>
cmd WebManagement.exe -SetCert localhost.pfx PickAPassword

cmd WebManagement.exe -SetCert --1.pfx PickAPassword
cmd WebManagement.exe -SetCert MyLivingRoomPC.pfx PickAPassword

cmd sc stop webmanagement
cmd sc start webmanagement
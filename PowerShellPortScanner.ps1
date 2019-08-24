$port = 0..65535
$net = “192.168.0”
$range = 1..254
foreach ($port in $range)
{
 foreach ($r in $range)
 {
 $ip = “{0}.{1}” -F $net,$r
 echo Scanning : $ip":"$port
 
 if(Test-Connection -BufferSize 16 -Count 1 -Quiet -ComputerName $ip)
   {
     $socket = new-object System.Net.Sockets.TcpClient($ip, $port)
     If($socket.Connected)
       {
        “$ip listening to port $port”
        $socket.Close() }
    }
  }
}
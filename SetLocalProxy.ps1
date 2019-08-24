set tracing trace-file-prefix="C:\Temp" level=verbose format=hex
set tracing output=debugger max-trace-file-size=512000 state=enabled

set proxy myproxy
set proxy myproxy:80 "127.0.0.1"
set proxy proxy-server="http=myproxy;https=sproxy:88" bypass-list="*.contoso.com"
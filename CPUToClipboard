--- Copies your CPU usage (via terminal) to the clipboard 

set dispCPU to (do shell script "/bin/ps -xco %cpu,command | /usr/bin/awk '{print $00}'")
set dispCPU to dispCPU as Unicode text
set the clipboard to dispCPU

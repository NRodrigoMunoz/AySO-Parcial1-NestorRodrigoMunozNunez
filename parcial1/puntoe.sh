cat /proc/meminfo |grep MemTotal > filtrobasico.txt
sudo dmidecode -t chassis |grep Chassis >> filtrobasico.txt
sudo dmidecode -t chassis |grep Manufacturer >> filtrobasico.txt

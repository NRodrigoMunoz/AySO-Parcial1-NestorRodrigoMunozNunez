curl -s ifconfig.me|awk '{print "Mi IP Publica es: " $1}' > filtroavanzado.txt
grep vagrant /etc/passwd|awk -F ':' '{print "Mi usuario es: " $1}' >> filtroavanzo.txt
sudo cat /etc/shadow|grep vagrant|awk -F ':' '{print "El hast de mi Usuario es: " $2}' >> filtroavanzo.txt

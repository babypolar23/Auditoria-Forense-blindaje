#!/bin/bash

echo "===INICIANDO AUDITORÍA DE RED E INFRAESTRUCTURA==="
whoami 
free -h 
df -h
sudo dnf update 
sudo dnf install net-tools curl htop
find / -name "*.conf" 2>/dev/null
systemctl status NetworkManager 
systemctl restart NetworkManager

echo "===FORENSE Y BLINDAJE (NODO ARCH LINUX)==="
sudo pacman -Syu 
sudo pacman -S nginx zip
cd /var/log
grep "Failed" syslog | wc -l > reporte_critico.txt
chmod 600 reporte_critico.txt 
ls -l reporte_critico.txt
echo "===AUDITORÍA Y BLINDAJE COMPLETADOS EXITOSAMENTE==="

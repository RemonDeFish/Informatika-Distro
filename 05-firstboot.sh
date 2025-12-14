#!/bin/bash
# Script automasi first boot

LOGFILE="/var/log/firstboot.log"

echo "[+] Script Firstboot memulai" | tee -a $LOGFILE

# Update repository
apt update | tee -a $LOGFILE

# Pesan selamat datang
echo "===================================" | tee -a $LOGFILE
echo " Selamat Datang ke RemonOS " | tee -a $LOGFILE
echo " System siap digunakan " | tee -a $LOGFILE
echo "===================================" | tee -a $LOGFILE

# Hapus autostart agar hanya jalan sekali
rm -f /etc/xdg/autostart/firstboot.desktop

echo "[✓] First boot initialization completed" | tee -a $LOGFILE

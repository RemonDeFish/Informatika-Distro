#!/bin/bash
# Menghapus aplikasi tidak relevan

echo "[+] Menghapus bloatware..."

apt remove -y \
pop-shop \
pop-upgrade \
thunderbird \
cheese \
gnome-weather

apt autoremove -y
apt clean

echo "[✓] Bloatware lenyap"

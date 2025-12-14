#!/bin/bash
# =====================================================
#  Academic Lab Distro - First Boot Initialization
# =====================================================

LOGFILE="/var/log/firstboot.log"

exec > >(tee -a "$LOGFILE") 2>&1

clear

cat << "EOF"
=====================================================
                                                                                                                                     
                                                                                                                                     
                                                                                                                                     
                                                              █████                                                                  
    ███████████                                                █   █                      
    ███      ████                                                ██░█                    
    ███        ███                                                   ░                  
    ███        ███    █████████     ██ ███████ ████████       ▓▒▒▒▒░░░▓    ███████████  
    ███        ██    ██       ███   ███      ███     ███    ▓▒░░      ░▒   ░██       ██   
    ████████████    ██         ██   ██       ██       ██   ▓░     ░░  ░▒▒   ██       ██
    ███     ██      █████████████   ██       ██       ██   ▒░░         ░▒   ██       ██ 
    ███      ███    ██              ██       ██       ██   ▒ ░   ░ ░  ░▒   ░██       ██ 
    ███       ██░    ██       ███   ██       ██       ██   ▓░ ░░░   ░░▒░    ██       ██ 
    ███        ███    ██████████    ██░      ██       ██    ▒░░ ░░░░▒▓     ███       ██    
                                                             ▓▒▒▒▒▓                                                                  
                                                                                                                                                                                                     
                        ▓███████░          ████████                                                                                                                                          
                      ████     ████      ███      ███   
                     ██░         ███    ██         ███   
                   ███           ███   ███              
                   ██             ██    █████░       
                   ██             ██        ███████     
                   ██             ██             ███      
                   ███           ███              ███    
                    ███         ███    ███        ██   
                        ████████          ████████      
                     Academic / Laboratory Distro
=====================================================
EOF

echo
echo "[*] First boot initialization Dimulai..."
echo "[*] Log file : $LOGFILE"
sleep 2

# -----------------------------------------------------
# Check internet connection
# -----------------------------------------------------
echo "[*] Mengecek koneksi internet..."
if ping -c 1 8.8.8.8 >/dev/null 2>&1; then
    echo "[✓] Ada koneksi internet!"
    apt update
else
    echo "[!] Tidak ada koneksi"
    echo "[!] Skipping system update"
fi

# -----------------------------------------------------
# System information
# -----------------------------------------------------
echo
echo "[*] System Information:"
echo "Hostname : $(hostname)"
echo "Kernel   : $(uname -r)"
echo "User     : $(whoami)"
echo "Date     : $(date)"

# -----------------------------------------------------
# Lab environment notice
# -----------------------------------------------------
echo
echo "-----------------------------------------------------"
echo " NOTICE:"
echo " Sistem ini berjalan dalam mode LIVE LAB."
echo " Semua data user akan hilang setelah reboot."
echo "-----------------------------------------------------"

sleep 2

# -----------------------------------------------------
# Disable first boot autostart (run once)
# -----------------------------------------------------
echo
echo "[*] Menonaktifkan first boot service..."
rm -f /etc/xdg/autostart/firstboot.desktop

echo
echo "[✓] First boot initialization selesai"
echo "[✓] System siap dipakai"
sleep 3

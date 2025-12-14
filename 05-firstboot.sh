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
    ███████████                                                █   █                               ▓███████░          ████████       
    ███      ████                                                ██░█                            ████     ████      ███      ███     
    ███        ███                                                   ░                          ██░         ███    ██         ███    
    ███        ███    █████████     ██ ███████ ████████       ▓▒▒▒▒░░░▓    ███████████         ███           ███   ███               
    ███        ██    ██       ███   ███      ███     ███    ▓▒░░      ░▒   ░██       ██        ██             ██    █████░           
    ████████████    ██         ██   ██       ██       ██   ▓░     ░░  ░▒▒   ██       ██        ██             ██        ███████      
    ███     ██      █████████████   ██       ██       ██   ▒░░         ░▒   ██       ██        ██             ██             ███     
    ███      ███    ██              ██       ██       ██   ▒ ░   ░ ░  ░▒   ░██       ██        ███           ███              ███    
    ███       ██░    ██       ███   ██       ██       ██   ▓░ ░░░   ░░▒░    ██       ██         ███         ███    ███        ██     
    ███        ███    ██████████    ██░      ██       ██    ▒░░ ░░░░▒▓     ███       ██           ███████████       ███████████      
                                                             ▓▒▒▒▒▓                                                                  
                                                                                                                                     
                                                                                                                                     
                                                                                                                                     
                                                                                                                                     
        Academic / Laboratory Distro
=====================================================
EOF

echo
echo "[*] First boot initialization started..."
echo "[*] Log file : $LOGFILE"
sleep 2

# -----------------------------------------------------
# Check internet connection
# -----------------------------------------------------
echo "[*] Checking internet connection..."
if ping -c 1 8.8.8.8 >/dev/null 2>&1; then
    echo "[✓] Internet connection available"
    apt update
else
    echo "[!] No internet connection detected"
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
echo " This system is running in LIVE LAB MODE."
echo " All user data will be erased after reboot."
echo "-----------------------------------------------------"

sleep 2

# -----------------------------------------------------
# Disable first boot autostart (run once)
# -----------------------------------------------------
echo
echo "[*] Disabling first boot service..."
rm -f /etc/xdg/autostart/firstboot.desktop

echo
echo "[✓] First boot initialization completed successfully"
echo "[✓] System is ready for academic use"
sleep 3

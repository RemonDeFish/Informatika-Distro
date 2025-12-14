#!/bin/bash
# Update sistem dasar

echo "[+] Updating system repository..."
apt update && apt upgrade -y

echo "[✓] System updated successfully"

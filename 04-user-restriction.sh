#!/bin/bash
# Membuat user lab non-root dan restricted

USERNAME="labuser"

echo "[+] Membuat restricted lab user: $USERNAME"

adduser --disabled-password --gecos "" $USERNAME

# Tambahkan ke grup yang aman
usermod -aG audio,video,plugdev $USERNAME

# Pastikan tidak punya akses sudo
deluser $USERNAME sudo 2>/dev/null

# Set permission home directory
chmod 750 /home/$USERNAME

echo "[✓] User $USERNAME telah dikonfigurasi sebagai restricted user"

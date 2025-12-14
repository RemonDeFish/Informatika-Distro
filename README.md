# Automation Scripts

Folder ini berisi skrip Bash yang digunakan dalam proses remastering
Pop!_OS Academic Lab Distro.

## Daftar Skrip
- `01-system-update.sh`  
  Update repository dan sistem

- `02-install-aplikasi.sh`  
  Instal aplikasi edukasi dan produktivitas

- `03-menghapus-bloatware.sh`  
  Menghapus aplikasi bawaan yang tidak relevan

- `04-user-restriction.sh`  
  Membuat user lab non-root dan restricted

- `05-firstboot.sh`  
  Skrip otomatisasi yang dijalankan saat first boot

## Catatan
Semua skrip dijalankan dalam environment chroot Cubic
kecuali `05-firstboot.sh` yang berjalan saat live boot.

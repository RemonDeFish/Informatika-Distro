# Informatika-Distro
Informatika-Distro: Menciptakan Lingkungan Kerja Digital Khusus

## Deskripsi
RemonOS Academic Lab Distro adalah distribusi Linux hasil remaster dari Pop!_OS (Ubuntu-based) yang dirancang khusus untuk lingkungan laboratorium komputer dan akademik.  
Distribusi ini dibuat sebagai bagian dari Proyek Akhir Mata Kuliah Sistem Operasi, dengan fokus pada keamanan, konsistensi lingkungan belajar, dan kemudahan penggunaan di lab. Distribusi ini berjalan dalam mode Live Stateless, sehingga data pengguna tidak tersimpan secara permanen, cocok untuk penggunaan publik di laboratorium kampus.

## Tujuan
- Menyediakan sistem operasi siap pakai untuk kegiatan praktikum dan pembelajaran
- Membatasi hak akses pengguna (non-root & restricted)
- Menyediakan aplikasi edukasi dan produktivitas open-source
- Menerapkan konsep remastering Linux menggunakan Cubic
- Memenuhi seluruh kriteria teknis proyek akhir Sistem Operasi

## Basis Sistem
- **Parent Distro**: Pop!_OS 22.04 LTS
- **Base System**: Ubuntu 22.04 LTS
- **Remaster Tool**: Cubic
- **Host OS**: Linux Mint
- **Desktop Environment**: GNOME (dikustomisasi)

## Konfigurasi User
- Default user: `labuser`
- Default password: `labuser`
- User tidak memiliki akses sudo
- Hak akses dibatasi untuk mencegah perubahan sistem
- Cocok untuk lingkungan multi-user di laboratorium

## Aplikasi Bawaan

### Aplikasi Edukasi & Produktivitas
- LibreOffice
- GIMP
- GeoGebra
- VLC Media Player
- Evince
- Okular
- FileZilla
- Virt-Manager
- GNOME Boxes
- Git
- Build Essential
- Htop

### Aplikasi yang Dihapus (Bloatware)
- Pop!_Shop
- Pop!_Upgrade
- Thunderbird
- Cheese
- GNOME Weather

## Keamanan & Mode Live
- Sistem berjalan dalam **mode stateless (non-persistent)**
- Data user tidak disimpan setelah reboot
- Cocok untuk praktikum dan komputer publik

## Kustomisasi Kernel
Kernel boot parameter yang dimodifikasi:
```quiet splash mitigations=auto fsck.mode=skip nopersistent```

### Penjelasan:
- `mitigations=auto` → Perlindungan keamanan CPU
- `fsck.mode=skip` → Mempercepat proses boot
- `nopersistent` → Mengaktifkan mode live stateless


## Kustomisasi Tampilan
- GTK Theme: **Arc-Dark**
- Icon Theme: **Papirus**
- Wallpaper custom Academic/Lab
- Tampilan dibuat sederhana dan profesional untuk lingkungan pendidikan

## Skrip Otomatisasi (First Boot)
Distribusi ini menyertakan skrip otomatis yang dijalankan saat first boot:
- Update repository
- Menampilkan pesan selamat datang
- Menyiapkan environment awal lab

## Proses Remastering (Ringkas)
1. Install Cubic di Linux Mint
2. Import ISO Pop!_OS
3. Modifikasi filesystem (chroot)
4. Instal & hapus paket sesuai kebutuhan
5. Konfigurasi user dan kernel parameter
6. Tambahkan skrip first boot
7. Build ISO final menggunakan Cubic

## Struktur Output
- `*.iso` → File ISO final siap diuji
- Dokumentasi konfigurasi & perintah CLI
- Screenshot hasil live boot & desktop

## Pengujian
Distribusi telah diuji pada:
- VirtualBox
- GNOME Boxes
- Mode Live Boot USB

Hasil:
- Boot berhasil
- Aplikasi berjalan normal
- User tidak memiliki akses root
- Data tidak tersimpan setelah reboot

---

## Konteks Akademik
Proyek ini dibuat untuk memenuhi tugas:
**Proyek Akhir Mata Kuliah Sistem Operasi**  
Topik: *Remastering dan Kustomisasi Distribusi Linux*  
Tema: **Academic / Lab Distro**

## Tim Pengembang
- Nama: _Raymond Harsono Alim_
- NIM: _24081010160_
- Kelas/Kelompok: _G081/kelompok 6_

## Lisensi
Distribusi ini mengikuti lisensi dari software open-source yang digunakan di dalamnya.  
Pop!_OS merupakan distribusi Linux berbasis Ubuntu dan dilisensikan sesuai kebijakan upstream masing-masing paket.

## Catatan
Distribusi ini ditujukan untuk **keperluan edukasi dan pembelajaran**, bukan untuk penggunaan produksi skala besar.


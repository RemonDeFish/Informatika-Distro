# Pop!_OS Kernel Modification Script (Cubic / ISO Remaster)

Repository ini berisi skrip dan dokumentasi untuk melakukan **modifikasi parameter kernel pada Pop!_OS**
dalam konteks **remaster ISO menggunakan Cubic**.

Pop!_OS menggunakan **systemd-boot** sebagai bootloader utama, bukan GRUB. Oleh karena itu,
konfigurasi kernel dilakukan melalui berkas:

/etc/kernelstub/configuration

Pada lingkungan chroot (seperti Cubic), utilitas `kernelstub` tidak dapat dijalankan karena
tidak tersedianya partisi EFI (`/boot/efi`). Solusi yang benar adalah **mengedit langsung konfigurasi kernelstub**.

---

## Tujuan Modifikasi Kernel

- Menunjukkan kustomisasi sistem pada level kernel
- Mengoptimalkan performa sistem
- Memenuhi syarat tugas proyek akhir Sistem Operasi
- Tetap aman dan stabil untuk ISO Live

---

## Parameter Kernel yang Ditambahkan

|          Parameter           |                         Fungsi                        |
|------------------------------|-------------------------------------------------------|
| `ipv6.disable=1`             | Menonaktifkan IPv6 untuk mengurangi overhead jaringan |
| `transparent_hugepage=never` | Meningkatkan responsivitas sistem pada RAM terbatas   |

---

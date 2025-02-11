# Godot First Project - Samurai Animation Prototype

Proyek ini adalah prototipe animasi dan kontrol karakter untuk game yang dibangun dengan **Godot Engine**. Karakter utama dalam proyek ini adalah **Samurai**, dengan berbagai animasi dan kontrol aksi seperti **run**, **walk**, **idle**, **attack_1**, dan **attack_2**.

## Gambar Karakter Samurai

![Samurai Idle](assets/doc.png)

## Fitur Utama

- **Karakter: Samurai**

  - Karakter utama adalah seorang samurai yang memiliki animasi dasar.
- **Animasi yang Tersedia:**

  - **Idle**: Karakter diam dan siap bergerak.
  - **Walk**: Karakter bergerak dengan berjalan.
  - **Run**: Karakter bergerak cepat dengan berlari.
  - **Attack 1**: Animasi serangan pertama, seperti serangan ringan.
  - **Attack 2**: Animasi serangan kedua, seperti serangan kuat.
- **Kontrol Karakter:**

  - Menggerakkan karakter menggunakan tombol arah atau joystick.
  - Menyerang menggunakan tombol tertentu untuk memicu **Attack 1** atau **Attack 2**.
  - Transisi animasi yang mulus antar **idle**, **walk**, **run**, dan **attack**.

## Cara Memulai

### Prasyarat

- **Godot Engine** versi 4.x atau lebih baru diinstal di komputer Anda.

### Langkah Instalasi

1. **Clone repository** ini ke komputer Anda:
   ```bash
   git clone https://github.com/rikiruswandii/godot-first.git

   ```
2. **Buka proyek** ini di Godot Engine:

- Pilih main_scene.tscn untuk membuka scene utama.
- Klik Play untuk memulai pengujian animasi dan kontrol karakter.

### Penggunaan

- WASD / Tombol Arah: Menggerakkan karakter samurai (walk dan run).
- Mouse klik (kanan dan kiri): Memicu animasi Attack 1 atau Attack 2.
- Idle: Karakter akan kembali ke posisi idle saat tidak ada input.

### Tujuan Proyek

**Proyek ini bertujuan** untuk:

- Membuat animasi dasar dan kontrol karakter menggunakan Godot Engine.
- Mengimplementasikan transisi animasi yang mulus antar berbagai aksi (idle, walk, run, attack).
- Menjadi dasar untuk mengembangkan game dengan karakter samurai yang lebih kompleks.

### Rencana Pengembangan Selanjutnya

Beberapa **fitur yang direncanakan** untuk pengembangan lebih lanjut:

- Animasi lebih banyak untuk gerakan tambahan seperti lompat, melompat, atau menghindar.
- AI musuh dan interaksi lebih dalam dengan lingkungan.
- Level dan pengaturan musuh untuk menjadikan game lebih menantang.

## Lisensi Aset

Aset karakter yang digunakan dalam proyek ini diambil dari **CraftPix** dan dilisensikan di bawah [CraftPix License](https://craftpix.net/file-licenses/).

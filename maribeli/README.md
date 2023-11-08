# Nama: Chika Marsya Diandra - 2206083344

# Kelas: PBP F

<details>
<summary><b>Tugas 7</b></summary>

### (1)  Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
- Berikut adalah perbedaan dari Stateless WIdget dan Stateful Widget :
1. Stateless Widget
- Menggunakan data yang bersifat konstan : Stateless widget dapat digunakan ketika properti atau tampilan dari widget tidak berubah selama program berjalan. Contoh : Gambar
- Mengimplementasikan metode build : Stateless widger memiliki metode build untuk mendefinisikan tampilan widget berdasarkan properti yang diberikan
- Tidak memiliki state : Stateless widget tidak dapat mengubah keadaannya sendiri. Saat widget telah dibuat, properti tidak dapat diubah.
2. Stateful Widget
- Menggunakan data yang berubah : Stateful widget digunakan ketika properti dapat berubah selama program berjalan, misal respons terhadap interaksi pengguna.
- Mengimplementasikan metode createState : Stateful widget memiliki metode createState untuk membuat objek yang dapat mengelola keadaan widget.
- Memiliki state : Stateful widget dapat mengubah keadaan selama program berjalan,  Widget dapat memperbarui tampilannya berdasarkan perubahan keadaan atau data yang terkait.

---
### (2) Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
- Scaffold: Mengatur tata letak dasar aplikasi, menyediakan app bar, drawer, bottom navigation, dan floating action button.
- SnackBar: Menampilkan pesan singkat yang muncul di bagian bawah layar, biasanya digunakan untuk memberi umpan balik kepada pengguna setelah suatu tindakan.
- MaterialApp: Widget yang digunakan untuk membuat root aplikasi. Berfungsi untuk mengkonfigurasi aspek dasar seperti judul, halaman, dan tema.
- AppBar: Widget untuk menampilkan app bar atas dalam aplikasi dengan judul dan warna latar belakang.
- SingleChildScrollView: Widget yang berfungsi untuk mengizinkan konten dapat di scroll, jika konten lebih panjang dari layar.
- Padding: Menambahkan padding (jarak) di sekitar widget-child.
- Text: Menampilkan teks di layar dengan berbagai konfigurasi seperti ukuran, gaya, dan warna.
- Column: Menyusun widget-child secara vertikal, satu di bawah yang lain.
- GridView.count: Menampilkan widget dalam bentuk grid dengan jumlah kolom tertentu, memungkinkan tata letak yang rapi.
- Material: Mengaplikasikan desain material pada widget-child di dalamnya, memberikan efek visual seperti bayangan dan ink splash.
- InkWell: Membuat area yang responsif terhadap sentuhan, biasanya digunakan untuk menanggapi interaksi pengguna seperti ketika tombol ditekan.
- InventoryCard (widget buatan sendiri): Widget kustom yang menampilkan item inventaris dengan ikon dan teks.
- Container: Widget yang mengatur tampilan setiap item belanja, termasuk ikon dan teks
- Icon: Widget untuk menampilkan ikon

---
### (3) Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
- Langkah pertama, kita perlu membuat flutter baru dengan menjalankan 'flutter create maribeli'
- Masuk kedalam direktori dengan menggunakan cd
- Di dalam file menu.dart, tambahkan teks dan kartu untuk item yang akan dijual.
- Tentukan tipe data untuk produk menggunakan kelas InventItem, yang memiliki nama, ikon, dan warna.
- Atur widget halaman dari stateful menjadi stateless, dan modifikasi konstruktor dan tambahkan daftar produk.
- Lalu, tampilkan kartu produk, dan buat widget stateless baru dengan nama InventCard untuk menampilkan kartu item. Di dalam InventCard, gunakan InkWell untuk membuat area responsif terhadap interaksi pengguna.
- Saat tombol ditekan, atur agak Snackbar muncul dengan pesan sesuai.
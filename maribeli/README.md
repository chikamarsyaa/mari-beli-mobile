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
---

</details>

<details>
<summary><b>Tugas 8</b></summary>

---
### (1) Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

####  Navigator.push() dan Navigator.pushReplacement() adalah dua metode yang sering digunakan dalam pengembangan aplikasi Flutter untuk navigasi antar halaman. Berikut perbedaan antara keduanya :
A. Navigator.push()

- Fungsi dari Navigator.push() adalah untuk menavigasi ke halaman baru diatas tumpukan navigasi (stack). Maksudnya adalah saat melakukan navigasi menuju halaman baru, halaman saat ini tetap akan didalam stack. 
- Contoh Penggunaan dari Navigator.push(), Misalkan kita memiliki dua halaman 'HomePage' dan 'DetailPage'. Dari 'HomePage', kita akan pergi menuju 'DetailPage' tanpa menghilangkan 'HomePage' dari navigasi.
~~~
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => DetailPage()),
);
~~~
- Pada kasus diatas, saat user click tombol back di 'DetailPage', aplikasi akan balik ke 'HomePage'.

B. Navigator.pushReplacement()

- Fungsi dari Navigator.pushReplacement() yaitu untuk menavigasi ke halaman baru sambil menggantikan halaman saat ini di tumpukan navigasi (stack). Hal ini mencegah pengguna untuk kembali ke halaman sebelumnya dengan menggunakan tombol 'back'.
- Contoh Penggunaan Navigator.pushReplacement(), Misalkan user sedang ada di 'LoginPage' dan setelah login sukses, user ingin pergi ke 'HomePage' tanpa memberi pilihan opsi untuk kembali ke 'LoginPage'.
~~~
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => HomePage()),
);
~~~
- Pada case diatas, ketika user mencoba kembali, mereka tidak akan kembali ke 'LoginPage' karena telah digantikan oleh 'HomePage' di stack.

### (2) Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
- Container: Wadah untuk mengatur tata letak dan memberi styling pada elemen, misalnya padding, margin, alignment, etc.
- Expanded & Flexible: Mengontrol bagian dari ruang yang tersedia yang digunakan. Expanded mengisi ruang tersedia, sedangkan Flexible memberikan lebih banyak kontrol atas faktor fleksibilitas.
- Wrap: Membuat row atau column dan secara otomatis beralih ke row atau column berikutnya setelah ruang di row atau column saat ini habis.
- ConstrainedBox, SizedBox, & AspectRatio: Mengontrol ukuran atau aspek rasio dari elemen childnya.
- Stack: Berfungsi untuk menumpuk widget/elemen satu di atas yang lain.
- Padding : Menambahkan padding di sekitar widget child.
- Align and Center : Align untuk mengatur posisi widget child di dalamnya, sedangkan Center untuk memusatkan child.
- Row and Column : Row untuk mengatur widget child secara horizontal, sedangkan Column untuk mengatur secara vertikal.
- GridView : Untuk menampilkan widget dalam grid dua dimensi.
- ListView : Untuk menampilkan daftar scrollable item.
- Transform : Untuk mengubah ukuran dan posisi elemen child.
- Scaffold : Untuk memberikan struktur dasar material design seperti Drawer, Appbar, dan FloatingActionButton.

### (3) Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
- TextFormField : Widget ini digunakan untuk menerima input dari user dalam bentuk string.
- Form : Digunakan sebagai wadah untuk berbagai input field widget yang sudah dibuat.

### (4) Bagaimana penerapan clean architecture pada aplikasi Flutter?
 Konsep dasar Clean Architecture adalah pemisahan antara logika bisnis aplikasi dan framework atau teknologi yang digunakan. Ini membantu dalam memastikan bahwa aplikasi tetap fleksibel dan tidak terikat dengan teknologi tertentu. Berikut tanggung jawab spesifiknya : 

1. Data Layer : Bertanggung jawab atas pengelolaan data flutter (repositori, sumber data, dan repositori).
2. Bussiness Logic Layer : Merupakan independen dari framework dan UI, dan berisi logic bisnis aplikasi.
3. Presentation Layer : Berfungsi untuk mengelola UI dan interaksi pengguna. Dapat melalui widget dan logic UI Flutter.
4. Depedency Injection : Menggunakan teknik provider untuk mengurangi ketergantungan antar komponen. 

### (5) Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
- Membuat direktori baru pada lib yaitu screens dan widgets untuk mempermudah metode clean architecture.
- Membuat file shoplist_form.dart untuk form menerima input 
~~~
import 'package:flutter/material.dart';
import 'package:maribeli/widgets/left_drawer.dart';

class ShopFormPage extends StatefulWidget {
  const ShopFormPage({super.key});

  @override
  State<ShopFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<ShopFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _price = 0;
  String _description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Item',
          ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Nama Item",
                    labelText: "Nama Item",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _name = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Untuk bagian ini wajib diisi ya!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Harga Item",
                    labelText: "Harga Item",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      _price = int.tryParse(value) ?? 0;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Harga tidak boleh kosong!";
                    }
                    if (int.tryParse(value) == null) {
                      return "Harga harus berupa angka!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Deskripsi Item ",
                    labelText: "Deskripsi Item",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _description = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Deskripsi tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.indigo),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Item berhasil tersimpan'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: [
                                    Text('Nama: $_name'),
                                    Text('Harga: $_price'),
                                    Text('Deskripsi: $_description'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    _formKey.currentState!.reset();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
~~~
- Membuat drawer dan menghubungkan opsi tambah item yang berada pada drawer dan halaman utama ke shopliist_form.dart. 
~~~
import 'package:flutter/material.dart';
import 'package:maribeli/screens/menu.dart';
import 'package:maribeli/screens/shoplist_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'MariBeli!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Anda bisa catat kebutuhan belanja disini lho!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Tambah Item'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShopFormPage(),
                ));
            },
          ),
        ],
      ),
    );
  }
}
~~~
- Menghubungkan "Tambah Item" button untuk menuju ke ShopFormPage
~~~
if (item.name == "Tambah Item") {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ShopFormPage()));
~~~

</details>

<details>
<summary><b>Tugas 9</b></summary>

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
---
Ya, pengambilan data JSON bisa dilakukan tanpa membuat model terlebih dahulu. Pengambilan data JSON biasanya melibatkan akses atau permintaan data JSON dari suatu sumber, seperti API web atau file JSON lokal, dan kemudian mengurai data JSON tersebut untuk mendapatkan informasi yang dibutuhkan. Namun, penggunaan model akan memberikan impact yang lebih baik karena dapat digunakan kembali di berbagai bagian aplikasi.

---
### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
---
<strong>CookieRequest</strong> biasa digunakan untuk mengelola Cookie seperti pengiriman dan penerimaan Cookie, token authentication, dan memastikan bahwa Cookie telah disimpan dan di transmisikan dengan aman. <br>
<strong>CookieRequest</strong> perlu dibagikan ke semua komponen di aplikasi Flutter karena untuk  memastikan bahwa semua permintaan HTTP yang dibuat dari berbagai bagian aplikasi menggunakan cookie yang sama, serta memungkinkan pengelolaan keamanan cookie secara terpusat, dan menjaga efisiensi.

---
### Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
---
1. **Fetch Data**:
   - Menggunakan HTTP request (biasanya `GET`) untuk mengambil data JSON dari web service.

2. **Deserialisasi JSON**:
   - Mengubah data JSON yang diterima menjadi objek Dart. Ini bisa dilakukan dengan menggunakan model yang sudah dibuat atau secara langsung menjadi `Map` atau `List`, tergantung pada struktur JSON.

3. **Penggunaan Data**:
   - Menggunakan data yang telah dikonversi untuk mengisi state atau variabel di dalam aplikasi Flutter. Ini bisa berupa data yang ditampilkan langsung atau yang digunakan untuk logika lebih lanjut dalam aplikasi.

4. **Menampilkan Data**:
   - Menampilkan data yang telah dikonversi ke dalam aplikasi dengan menggunakan berbagai widget Flutter. Sebagai contoh, `ListView.builder` dapat digunakan untuk menampilkan daftar data, sementara `Text` atau `Card` widget dapat digunakan untuk menampilkan detail data.

`Catatan Penting`

- Penting untuk melakukan penanganan error selama proses fetch data untuk menangani kasus seperti koneksi jaringan yang buruk atau data yang tidak valid.
- Gunakan `FutureBuilder` atau `StreamBuilder` untuk membangun widget yang bergantung pada data asynchronous, seperti data yang di-fetch dari web service.

---
### Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
---
| Widget            | Fungsi |
|-------------------|--------|
| `Scaffold`        | Membuat struktur dasar tampilan aplikasi |
| `ListView.builder`| Membuat daftar dinamis berdasarkan data |
| `TextFormField`   | Mengumpulkan input teks dari pengguna |
| `ElevatedButton`  | Tombol untuk melakukan aksi, seperti submit form |
| `FutureBuilder`   | Membangun UI berdasarkan hasil interaksi dengan `Future` |

---
### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
---
<strong>Implementasi Pada Aplikasi Django : </strong> 
- Membuat Django App baru bernama `authentication`
- Install django-cors-headers dan modifikasi settings.py dengan menambahkan authentication dan corsheaders pada INSTALLED_APPS
- Tambahkan corsheaders.middleware.CorsMiddleware pada middleware dan ada beberapa variable baru.
- Membuat views dan urls baru untuk login pada authentication dan tambahkan path yang diperlukan
- Implementasikan logout, tambahkan views dan urls baru pada authentication

<strong>Implementasi Pada Aplikasi Flutter : </strong>
- Install package yang dibutuhkan, yaitu provider dan pbp_django_auth
- Ubah StatelessWidget agar dapat menyediakan CookieRequest dengan menggunakan Provider
- Buat file login.dart di folder screens, lalu ubah main.dart widget MaterialApp sehingga langsung muncul di LoginPage
- Ambil data JSON dari project Sjango dan ubah menjadi language dart
- Install package http untuk menjalankan perintah http request 
- Modifikasi android/app/src/main/AndroidManifest.xml, untuk memperbolehkan akses internet pada aplikasi Flutter
- Buat file list_product_dart di folder screens, lalu tambahkan ke widget/left_drawer.dart, lalu ubah juga fungsi tombol `Lihat Produk`
- Jangan lupa untuk import file - file yang dibutuhkan
- Hubungkan halaman shoplist_form.dart dengan CookieRequest.
- Implementasi logout, dengan menambahkan kode untuk CookieRequest dan else if baru sehingga tombol logout dapat berfungsi

</details>
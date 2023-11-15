# Tugas 8
## Perbedaan antara Navigator.push() dan Navigator.pushReplacement() di Flutter:
Navigator.push(): Metode ini menambahkan halaman baru ke atas tumpukan halaman saat ini. Jadi, ketika Anda menggunakan Navigator.push(), halaman baru ditambahkan ke atas halaman saat ini, dan jika Anda menekan tombol kembali, Anda akan kembali ke halaman sebelumnya.

Navigator.pushReplacement(): Metode ini menggantikan halaman saat ini dengan halaman baru. Ketika Anda menggunakan Navigator.pushReplacement(), halaman saat ini dihapus dari tumpukan, dan halaman baru menjadi halaman teratas. Jika Anda menekan tombol kembali, Anda tidak akan kembali ke halaman sebelumnya, melainkan keluar dari aplikasi (jika tidak ada halaman lain dalam stack).

## Layout widget pada Flutter:
Container: Digunakan untuk mengatur tata letak dan dekorasi widget lain.
Row & Column: Digunakan untuk mengatur widget secara horizontal (Row) atau vertikal (Column).
Center: Widget layout untuk membuat widget ke tengah.
Expanded: Widget yang memperluas child dari Row, Column, atau Flex.
Padding: Widget yang memberikan padding pada child-nya.
Stack: Berguna untuk menumpuk beberapa child dalam cara yang sederhana.

## Elemen input pada form di Flutter:
Elemen input yang digunakan pada tugas ini adalah TextFormField. Alasan penggunaan TextFormField adalah karena memiliki parameter validator yang memungkinkan validasi input dan menampilkan pesan kesalahan jika input tidak sesuai.

## enerapan clean architecture pada aplikasi Flutter:
Penerapan clean architecture pada Flutter melibatkan strukturkan kode menjadi lapisan-lapisan yang terpisah:

Domain Layer: Berisi logika bisnis dan model data.
Application Layer: Mengimplementasikan use case dari aplikasi dan menghubungkan lapisan infrastruktur dan presentasi.
Infrastructure Layer: Menangani interaksi dengan dunia luar seperti database dan server web.
Presentation Layer: Menangani kode yang merender UI, menerima input dari pengguna, dan memanggil use case.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
Buatlah direktori widgets dan screens di dalam direktori lib.
Sisipkan file drawer.dart yang mengandung navigasi ke halaman-halaman lain seperti home, Tambah Item, dan Lihat Item.
Buatlah file form.dart yang menampilkan widget Scaffold. Komponen tersebut terdiri dari AppBar, endDrawer, dan Form. Selanjutnya, Form tersebut meminta pengguna memasukkan empat informasi, yaitu Nama Item, Jumlah Item, Harga Item, dan Deskripsi Item. Setelah itu, form.dart menampilkan AlertDialog yang memuat data item yang baru saja ditambahkan setelah pengguna menekan tombol Save.
Implementasikan shop_card.dart yang berisi navigasi ke halaman Lihat Item dan Tambah Item.
Susun file show_items.dart yang menampilkan item-item yang telah ditambahkan. Data default dalam basis data awalnya kosong.

# Tugas 7

## Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

Stateless widget adalah widget statis yang tidak akan berubah. Stateless digunakan
untuk menampilkan widget yang statis atau tidak perlu adanya perubahan nilai. Contoh kita ingin
menampilkan text "Hello World" menggunakan widget Text. Kita tidak perlu memperbarui nilai teks
tersebut karena teks tersebut tidak berubah. Stateful widget adalah widget yang memiliki state atau
yang dapat terjadi perubahan nilai. Contoh stateful widget adalah radio button yang dapat berubah
ketika nilai true atau false.

## Widget yang Saya Gunakan

- MaterialApp: Widget ini digunakan sebagai bungkus untuk beberapa widget yang menggunakan tema
  material design.
- Scaffold: Widget ini digunakan untuk membuat struktur dasar material design.
- AppBar: Widget ini digunakan untuk membuat AppBar.
- Padding: Widget ini digunakan untuk menambahkan padding pada widget lainnya.
- Column: Widget ini digunakan untuk menampilkan widget secara vertikal.
- Row: Widget ini digunakan untuk menampilkan widget secara horizontal.
- Icon: Widget ini digunakan untuk menampilkan ikon.
- ElevatedButton: Widget ini digunakan untuk membuat tombol dengan efek naik ketika ditekan.
- SnackBar: Widget ini digunakan untuk menampilkan pesan singkat yang muncul di bagian bawah layar.
- Inkwell: Widget ini digunakan untuk membuat area yang dapat di-tap.
- Card: Widget ini digunakan untuk membuat kartu.
- ListTile: Widget ini digunakan untuk membuat item dalam daftar.
- Text: Widget ini digunakan untuk menampilkan teks.

## Cara Implementasi Checklist

Tentu, berikut adalah parafrase dari langkah-langkah tersebut:

1. Inisiasi pembuatan direktori baru untuk proyek Flutter.
2. Memulai proyek Flutter dengan perintah `flutter create scud_inventory`.
3. Menghubungkan repositori baru ke direktori lokal proyek Flutter.
4. Membuat file `menu.dart` dalam direktori `lib` dan memindahkan kelas `MyHomePage` ke dalamnya.
5. Melakukan impor `menu.dart` ke dalam file `main.dart`.
6. Mengubah `MyHomePage` menjadi sebuah stateless widget.
7. Membuat kelas `Item` dengan atribut-atributnya.
8. Membuat kelas `ShopCard` dan mengatur tampilan widget yang terdapat pada `ShopCard`.
9. Mengedit komponen-komponen widget yang ada dalam `MyHomePage`.
10. Mengubah tampilan warna pada beberapa elemen, seperti warna ikon dan teks.
11. Push ke github

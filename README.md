# MyPortfolio Mobile

Aplikasi Flutter untuk portofolio Alphard Qodaruddin. Halaman utama menampilkan informasi profil dan tiga aksi portofolio.

## Menjalankan aplikasi

Pastikan Flutter SDK sudah terpasang, lalu jalankan perintah berikut dari root proyek.

```powershell
flutter pub get
flutter analyze
flutter test
flutter run
```

## Tugas 7

1. Widget tree adalah struktur hierarkis semua widget yang membentuk tampilan Flutter. Widget induk menentukan ruang dan konteks bagi widget anak. Misalnya `Scaffold` menjadi induk dari `AppBar` dan `body`, lalu `body` memuat `Padding`, `Column`, `Row`, serta `GridView`. Perubahan pada induk dapat memengaruhi tata letak atau tema widget anaknya.
2. `MaterialApp` menyediakan fondasi aplikasi Material, tema, dan halaman awal. `Scaffold` menyusun halaman dengan `AppBar` dan `body`. `AppBar` menampilkan judul di bagian atas. `Padding`, `Center`, `Row`, dan `Column` mengatur jarak serta posisi widget. `Card` dan `Container` membentuk kartu informasi. `Text` menampilkan data, sedangkan `Icon` menampilkan ikon menu. `GridView.count` menyusun tiga `ItemCard` dalam kisi. `Material` menentukan warna dan bentuk kartu aksi. `InkWell` menangani sentuhan kartu. `SnackBar` memberi umpan balik setelah aksi dipilih. `SizedBox` memberi jarak antarbagian. `InfoCard` dan `ItemCard` adalah widget buatan yang merangkum bagian antarmuka yang digunakan berulang.
3. `MaterialApp` menyiapkan fitur tingkat aplikasi yang mengikuti Material Design, termasuk tema, navigasi, dan konfigurasi halaman awal. Widget ini umumnya digunakan sebagai root karena widget di bawahnya dapat memakai tema dan layanan Material yang sama melalui `BuildContext`.
4. `StatelessWidget` digunakan ketika tampilan hanya bergantung pada data yang tidak berubah selama widget aktif. `MyHomePage`, `InfoCard`, dan `ItemCard` memakai `StatelessWidget` karena data profil dan menu sudah ditentukan. `StatefulWidget` dipakai saat tampilan perlu berubah akibat state internal, seperti form dengan input pengguna, daftar data yang dapat berubah, atau proses pemuatan data.
5. `BuildContext` menunjukkan lokasi sebuah widget pada widget tree. Flutter menggunakannya untuk mencari data dari widget induk, seperti tema dan `ScaffoldMessenger`. Di metode `build`, context digunakan oleh `Theme.of(context)` untuk warna AppBar, `MediaQuery.of(context)` untuk lebar InfoCard, dan `ScaffoldMessenger.of(context)` untuk menampilkan SnackBar.
6. Hot reload memasukkan perubahan kode ke aplikasi yang sedang berjalan sambil mempertahankan state yang ada. Hot restart membangun ulang widget tree dan mengembalikan state aplikasi ke awal. Perubahan pada state awal, kode native, aset, dependensi, atau konfigurasi aplikasi dapat memerlukan hot restart atau full restart karena tidak dapat diterapkan hanya dengan hot reload.

## AI Disclosure Tugas 7

Saya menggunakan OpenAI Codex untuk memindai struktur proyek Flutter dari Tutorial 08, mencocokkan implementasi dengan checklist Tugas 7, memperbarui profil, warna ItemCard, SnackBar, tes widget, dan README. Prompt yang saya gunakan meminta implementasi bertahap yang mempertahankan struktur tutorial, tidak menambah fitur di luar kebutuhan tugas, tidak membuat komentar kode, serta tidak melakukan commit. Saya meninjau hasil perubahan dan menjalankan perintah verifikasi secara lokal.

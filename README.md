## Tugas 7
1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
    State adalah sesuatu yang mewakili keadaan dari sebuah widget dimana state biasanya digunakan untuk memperbarui tampilan atau data. Hal ini membuat stateful widget sebagai widget yang dapat merespons interaksi pengguna atau perubahan data seperti tombol karena memiliki state yang dapat berubah. Berbeda hal dengan stateless widget yang tidak memiliki state yang bisa berubah hingga widget tidak dapat merespons interaksi pengguna. Stateless Widget dapat meringankan pekerjaan server karena tidak membutuhkan rebuild dibandingkan stateful widget.

2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
    - Scaffold: untuk membuat tampilan dasar aplikasi seperti app bar, body, etc.
    - AppBar: untuk menyediakan bar di bagian atas layar.
    - Padding: untuk memberi jarak di sekitar widget.
    - Column: untuk menyusun elemen secara vertikal.
    - Row: untuk menyusun elemeen secara horizontal.
    - InfoCard: untuk menampilkan informasi pengguna
    - Card: untuk memberikan kotak agar konten lebih terlihat
    - Text: untuk menampilkan teks
    - GridView: untuk menyusun elemen dalam bentuk grid/tabel.
    - ItemCard: untuk menampilkan ikon dan teks di setiap tombol.
    - Material: untuk memberikan efek material seperti shadow atau ripple.
    - InkWell: untuk menambahkan efek ripple saat widget ditekan.
    - Icon: untuk menampilkan ikon.
    - SnackBar: untuk memberikan notifikasi pada bagian bawah layar.
    - MediaQuery: untuk mendapatkan informasi ukuran layar.
    - Theme.of(context): untuk mengambil tema aplikasi yang digunakan.
    - MyApp: untuk menyediakan MaterialApp. 

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
    setState() merupakan suatu fungsi yang digunakan untuk memberi tau program bahwa ada perubahan state pada suatu widget. Hal tersebut akan memicu program untuk merender kembali widget tersebut hingga akan memperbarui tampilan. Variable yang dapat terdampak dengan fungsi tersebut adalah variable yang mempengaruhi tampilan secara langsung seperti input pengguna.


4. Jelaskan perbedaan antara const dengan final.
    Final digunakan untuk nilai yang diketahui pada runtime hingga final diinisialisasi saat runtime juga. Hal yang sama terjadi pada const yang digunakan untuk nilai tetap yang diketahui pada compile-time hingga const diinisialisasi pada saat compile-time juga. Biasanya const hanya digunakan untuk nilai sederhana dan statis, sedangkan final digunakan untuk hal yang dinamis. Kedua hal tersebut tidak dapat diubah seteleh diinisialisasi.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
    - Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya
        Membuat direktori project flutter dengan menjalankan perintah "flutter create gothly_realm" di terminal. 

    - Membuat tiga tombol sederhana dengan ikon dan teks
        Membuat definisi data berupa list items yang dibutuhkan (isi teks dan ikon yang ditampilkan dari ketiga button) pada ItemHomepage. Lalu membuat widget GridView di dalam Column MyHomePage dimana akan dikonfigurasi tampilannya dan mengambil data dari item ItemHomepage tersebut hingga dapat menampilkan tiga button dengan spesifikasi yang diinginkan.

    - Mengimplementasikan warna berbeda untuk setiap tombol
        Membuat tema warna keseluruhan aplikasi terlebih dahulu pada main.dart. Lalu membuat switch pada ItemCard dimana akan divalidasi nama tiap item (tombol) hingga dapat diberikan nilai backgroundColor yang berbeda-beda.

    - Memunculkan snackbar ketika tombol ditekan
        Menambahkan widget InkWell yang mendeteksi saat pengguna menekan tombol. Menambahkan SnackBar menggunakan ScaffoldMessenger pada onTap dari InkWell yang akan menampilkan SnackBar dengan teks yang diinginkan.
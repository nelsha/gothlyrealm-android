## Tugas 9
1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
    Pembuatan model untuk melakukan pengambilan ataupun pengiriman data JSON sangatlah penting untuk memastikan data tersebut dikelola dengan terstruktur dan efisien. Model juga membantu memvalidasi tipe data yang diterima dari JSON serta mempermudah pemeliharaan kode. Jika tidak menggunakan model, kita dapat melakukan hal tersebut secara manual namun memiliki risiko atas kesalahan serta dapat mempersulit penanganan JSON tersebut.

2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
    Fungsi dari library http tersebut adalah untuk melakukan request HTTP seperti GET dan POST ke server. Library ini membuat Flutter dapat berkomunikasi dengan server Django untuk mengirim dan menerima data.

3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
    CookieRequest digunakan untuk mengelola sesi dan autentifikasi berbasis cookie pada Flutter. Hal tersebut membuat server dapat mengenali request berikutnya dari pengguna yang sama serta menandai pengguna yang telah terautentifikasi. CookieRequest perlu dibagikan ke semua komponen agar dapat mempermudah dalam manajemen sesi serta dapat menghindari kesalahan.

4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
    Mekanisme pengiriman data dimulai dari user memasukkan data melalui form yang terdapat di Flutter lalu program akan mengirimkan data tersebut menggunakan request HTTP POST. Django yang menerima data tersebut akan memvalidasinya serta menyimpan data tersebut ke database. Flutter akan mengirimkan request HTTP GET lalu Django akan mengembalikan data dalam format JSON. Data tersebut lalu akan diproses lebih lanjut lagi di Flutter hingga dapat ditampilkan.

5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
    Mekanisme autentikasi dimulai dari saat user mengisi form di Flutter untuk mendaftar akun, lalu data tersebut dikirim ke Django untuk divalidasi dan disimpan serta mengirimkan kembali respons statusnya. Selanjutnya user dapat mengisi form di Flutter untuk masuk ke akun lalu data akan dikirim ke Django untuk diverifikasi. Jika berhasil, Django akan membuat suatu sesi yang akan disimpan di Flutter juga.
    Setelah login, Flutter akan memvalidasi sesi dengan Django dan Django akan mengirimkan data yang akan ditampilkan jika telah divalidasi. Jika ingin logout, Flutter akan mengirimkan request ke Django untuk menghapus sesi lalu user akan keluar dari aplikasi.

6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
    - Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
        Membuat halaman register di Flutter dengan meminta field yang dibutuhkan lalu menghubungkannya dengan register di Django yang akan memvalidasi registrasi user.

    - Membuat halaman login pada proyek tugas Flutter.
        Membuat halaman login di Flutter dengan meminta field yang dibutuhkan lalu menghubungkannya dengan register di Django yang akan memvalidasi login user.

    - Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
        Membuat aplikasi 'authentication' di Django lalu menginstall package provider dan pbp_django_auth yang menjadi jembatan antara Django dan Flutter.

    - Membuat model kustom sesuai dengan proyek aplikasi Django.
        Menggunakan Quicktype untuk membuat kode model dengan menyalin data JSON di Django lalu mengunggahnya ke Quicktype yang akan di translasi menjadi kode pembuatan model di Dart.

    - Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
        Membuat halaman list produk yang akan mengambil data JSON dari Django lalu menampilkan data tersebut dalam bentuk cards dimana cards tersebut berisi nama, harga dan deskripsi dari tiap produknya.

    - Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
        Membuat halaman detail produk yang akan mengambil data JSON dari Django lalu menampilkan semua data field yang di disimpan di database.

## Tugas 8
1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
    Const digunakan untuk mendeklarasikan nilai yang bersifat konstan serta diketahui dan diinisialisasi saat compile time. Penggunaan const dapat membuat penggunaan memori lebih berkurang karena program dapat menggunakan objek yang sama tanpa membuat salinan tiap kali objek tersebut dipanggil. Sebaiknya menggunakan const pada widget stateless atau tempat yang nilainya tidak berubah. Sebaliknya, saat menggunakan state widget adalah StatefulWidget sebaiknya const tidak digunakan atau pada saat nilai berubah saat runtime. 

2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
    Column digunakan untuk menyusun widget secara vertikal sedangkan Row digunakan untuk menyusun widget secara horizontal. Column biasanya digunakan saat membuat form atau list sedangkan Row dapat digunakan untuk menampilkan teks. 
    Contoh implementasi Column:
    Column(
        children: [
        Text('Hello PBP!'),
        Icon(Icons.star),
        ],
    )
    Contoh implementasi Row:
    Row(
        children: [
        Icon(Icons.home),
        Text('Home'),
        ],
    )

3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
    Elemen input yang aku gunakan pada halaman form disini adalah widget TextFormInput. Terdapat elemen input lainnya pada Flutter yang tidak aku gunakan seperti CheckBox, Radio, DatePicker dan lainnya. Penggunaan elemen input tersebut tidak digunakan pada tugas ini karena tidak dibutuhkannya elemen input tersebut untuk form yang dibuat.

4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
    Terdapat tema yang sudah diimplementasi untuk aplikasi agar konsisten pada main.dart. Tema tersebut diatur pada ThemeData yang berisi warna yang digunakan untuk aplikasi.

5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
    Navigasi pada tugas kali ini menggunakan Navigator untuk berpindah halaman. Penggunaan fungsi Navigator.push digunakan untuk membukan halaman baru diatas halaman yang sedang ditampilkan hingga dapat kembali ke halaman sebelumnya dengan tombol back dengan fungsi Navigator.pop. Penggunaan fungsi Navigator.pushReplacement digunakan untuk membuka halaman baru dan menggantikan halaman saat ini.

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
import 'package:flutter/material.dart';
import 'package:gothly_realm/screens/addproduct_form.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:gothly_realm/screens/list_product.dart';
import 'package:gothly_realm/screens/login.dart';

class ItemHomepage {
  final String name;
  final IconData icon;

  ItemHomepage(this.name, this.icon);
}

class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.
  final ItemHomepage item;
  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    // Menentukan warna latar belakang berdasarkan nama item
    final request = context.watch<CookieRequest>();
    Color backgroundColor;
    switch (item.name) {
      case "Lihat Daftar Produk":
        backgroundColor = Theme.of(context).colorScheme.primary;
        break;
      case "Tambah Produk":
        backgroundColor = Colors.green; // Warna untuk Tambah Produk
        break;
      case "Logout":
        backgroundColor = Colors.red; // Warna untuk Logout
        break;
      default:
        backgroundColor = Theme.of(context).colorScheme.secondary;
    }
    
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: backgroundColor,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),

      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () async {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddProductFormPage()),
            );
          }
          else if (item.name == "Lihat Daftar Produk") {
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => const ProductPage()
                ),
            );
          }
          else if (item.name == "Logout") {
            final response = await request.logout(
                "http://127.0.0.1:8000/auth/logout/");
            String message = response["message"];
            if (context.mounted) {
                if (response['status']) {
                    String uname = response["username"];
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("$message Sampai jumpa, $uname."),
                    ));
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(message),
                        ),
                    );
                }
            }
          }
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
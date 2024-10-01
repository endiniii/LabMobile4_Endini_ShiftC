import 'package:flutter/material.dart';

class DetailProdukEndiniPage extends StatelessWidget {
  final String kodeProduk;
  final String namaProduk;
  final int hargaProduk;

  const DetailProdukEndiniPage({
    Key? key,
    required this.kodeProduk,
    required this.namaProduk,
    required this.hargaProduk,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk Endini'),
        backgroundColor: Colors.grey[850],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text('Menu', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kode Produk: $kodeProduk', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Nama Produk: $namaProduk', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Harga Produk: Rp $hargaProduk', style: const TextStyle(fontSize: 18, color: Colors.green)),
          ],
        ),
      ),
    );
  }
}

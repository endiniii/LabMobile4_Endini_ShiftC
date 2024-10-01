import 'package:flutter/material.dart';

class TambahProdukEndiniPage extends StatefulWidget {
  const TambahProdukEndiniPage({Key? key}) : super(key: key);

  @override
  _TambahProdukEndiniPageState createState() => _TambahProdukEndiniPageState();
}

class _TambahProdukEndiniPageState extends State<TambahProdukEndiniPage> {
  final _kodeProdukController = TextEditingController();
  final _namaProdukController = TextEditingController();
  final _hargaProdukController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Produk Endini'),
        backgroundColor: Colors.blue,
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
                color: Colors.blue,
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
          children: [
            TextFormField(
              controller: _kodeProdukController,
              decoration: const InputDecoration(labelText: 'Kode Produk', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _namaProdukController,
              decoration: const InputDecoration(labelText: 'Nama Produk', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _hargaProdukController,
              decoration: const InputDecoration(labelText: 'Harga Produk', border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambah produk action
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              child: const Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}

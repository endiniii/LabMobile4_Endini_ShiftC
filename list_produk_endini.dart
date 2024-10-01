import 'package:flutter/material.dart';
import 'detail_produk_endini_page.dart'; // Import halaman detail produk

class ListProdukEndiniPage extends StatelessWidget {
  const ListProdukEndiniPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Produk Endini'),
        backgroundColor: Colors.orange,
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
                color: Colors.orange,
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
      body: ListView(
        children: [
          ListTile(
            title: const Text('Totebag', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            subtitle: const Text('Rp 100,000', style: TextStyle(color: Colors.green)),
            leading: const Icon(Icons.shopping_bag, color: Colors.orange),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailProdukEndiniPage(
                    kodeProduk: 'A001',
                    namaProduk: 'Totebag',
                    hargaProduk: 100000,
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Baju Identitas', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            subtitle: const Text('Rp 200,000', style: TextStyle(color: Colors.green)),
            leading: const Icon(Icons.shopping_bag, color: Colors.orange),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailProdukEndiniPage(
                    kodeProduk: 'A002',
                    namaProduk: 'Baju Identitas',
                    hargaProduk: 200000,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

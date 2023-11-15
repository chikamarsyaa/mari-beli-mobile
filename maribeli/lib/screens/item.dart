import 'package:flutter/material.dart';
import 'package:maribeli/screens/shoplist_form.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lihat Item'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade500,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: ProductStorage.items.length,
        itemBuilder: (context, index) {
          final item = ProductStorage.items[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                item.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Harga: ${item.price}',
                    style: const TextStyle(color: Colors.black54),
                  ),
                  Text(
                    'Deskripsi: ${item.description}',
                    style: const TextStyle(color: Colors.black54),
                  ),
                ],
              ),
              isThreeLine: true,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ShopFormPage()),
          );
        },
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
// next_page.dart
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String username;
  final String password;

  NextPage({required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'List of Foods:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                FoodItem(name: 'Pizza', price: '\Rp.200.000'),
                FoodItem(name: 'Burger', price: '\Rp.15.000'),
                FoodItem(name: 'Sushi', price: '\Rp.10.000'),
                FoodItem(name: 'Pasta', price: '\Rp.25.000'),
                FoodItem(name: 'Ice Cream', price: '\Rp5.000'),
                FoodItem(name: 'Ayam', price: '\Rp.20.000'),
                FoodItem(name: 'Pecel', price: '\Rp.15.000'),
                FoodItem(name: 'Bakmi', price: '\Rp.16.000'),
                FoodItem(name: 'Crepes', price: '\Rp.10.000'),
                FoodItem(name: 'Seblak', price: '\Rp10.000'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  final String name;
  final String price;

  FoodItem({required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Row(
        children: [
          Text('Price: $price'),
          Spacer(), // Spacer untuk memberikan ruang antara harga dan ikon tempat sampah
          Icon(Icons.delete), // Ikon tempat sampah
        ],
      ),
    );
  }
}

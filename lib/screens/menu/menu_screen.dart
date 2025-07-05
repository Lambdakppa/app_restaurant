import 'package:flutter/material.dart';
import '../../widgets/product_card.dart';
import '../../widgets/bottom_nav.dart';

//datos de prueba
final productos = [
{
'name': 'Ensalada de Frutas',
'price': 8500,
  'category': 'comida',
'description': 'mix de frutas frescas',
  'img': 'https://sebastian.cl/cmutem/AiHiDie1.jpg'
},
{
'name': 'Hamburguesa Clásica',
'price': 6500,
  'category': 'postre',
'description': 'Yogurt Light y Granola',
  'img': 'https://sebastian.cl/cmutem/ipea9Mai.jpg'
}
];

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/carrito');
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: productos.length,
        itemBuilder: (context, index) {
          final producto = productos[index];
          return ProductCard(producto:producto);
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';

// Simulación de productos (puedes mover esto a mock_data)
final productos = [
  {
    'nombre': 'Pizza Margarita',
    'precio': 8500,
    'imagen': 'assets/pizza.png',
  },
  {
    'nombre': 'Hamburguesa Clásica',
    'precio': 6500,
    'imagen': 'assets/burger.png',
  },
  // Agrega más productos aquí
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
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: productos.length,
        itemBuilder: (context, index) {
          final producto = productos[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Image.asset(producto['imagen'] as String, width: 56),
              title: Text(producto['nombre'] as String),
              subtitle: Text('\$${producto['precio']}'),
              trailing: ElevatedButton(
                onPressed: () {
                  // Aquí puedes agregar lógica para agregar al carrito
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${producto['nombre']} agregado')),
                  );
                },
                child: const Text('Agregar'),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/detalle_producto');
              },
            ),
          );
        },
      ),
    );
  }
}
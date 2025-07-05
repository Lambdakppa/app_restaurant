import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget{

  final Map<String, dynamic> producto;

  const ProductCard({
    super.key,
    required this.producto,
  });

  @override
  Widget build(BuildContext context){
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              producto['name'],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Image.network(
              producto['img'],
              width: 56,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(child: CircularProgressIndicator());
              },
              errorBuilder: (context, error, stackTrace){
                return const Icon(
                    Icons.broken_image,
                    size: 120,
                    color:Colors.grey);
              },
            ),
            Text(
              producto['description'],
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 8),
            Text(
              producto['category'],
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 12),
            Text(
              '\$${producto['price']}',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),

            ElevatedButton(
              onPressed: (){
                print("Boton funcionando!");
              },
              child: Text("Evaluar plato"),
            )
          ],
        ),
      ),
    );
  }

}
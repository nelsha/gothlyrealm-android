import 'package:flutter/material.dart';
import 'package:gothly_realm/models/product.dart';

class DetailPage extends StatelessWidget {
  final Product product;

  const DetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.name,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Description: ${product.fields.description}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10),
            Text(
              "Price: Rp${product.fields.price}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10),
            Text(
              "Amount: ${product.fields.stock}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10),
            Text(
              "Category: ${product.fields.category}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10),
            Text(
              "Rating: ${product.fields.rating}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 20),
            product.fields.imageUrl.isNotEmpty
                ? Image.network(
                    product.fields.imageUrl,
                    height: 200,
                    errorBuilder: (context, error, stackTrace) {
                      return const Text("Image not available");
                    },
                  )
                : const Text("No image available"),
          ],
        ),
      ),
    );
  }
}

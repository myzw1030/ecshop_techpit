import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Techpit Sports'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Home Page',
        ),
      ),
    );
  }
}

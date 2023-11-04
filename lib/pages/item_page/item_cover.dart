import 'package:flutter/material.dart';

class ItemCover extends StatelessWidget {
  const ItemCover({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.network(
            'https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1625&q=80',
            fit: BoxFit.cover,
          ),
        ),
        const Spacer(flex: 1),
      ],
    );
  }
}

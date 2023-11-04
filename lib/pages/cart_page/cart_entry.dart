import 'package:flutter/material.dart';

class CartEntry extends StatelessWidget {
  const CartEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              'https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1625&q=80',
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Item Name',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Text('option - name'),
              const Text(
                '12,345 yen',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const _ItemCounter(),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Delete'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ItemCounter extends StatelessWidget {
  const _ItemCounter();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30,
          child: TextButton(
            child: const Text('-'),
            onPressed: () {},
          ),
        ),
        const Text('12'),
        SizedBox(
          width: 30,
          child: TextButton(
            child: const Text('+'),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}

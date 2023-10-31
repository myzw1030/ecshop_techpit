import 'package:flutter/material.dart';

class ItemCategories extends StatelessWidget {
  const ItemCategories({super.key});

  static const categories = [
    'shoes',
    'uniform',
    'jacket',
    'pants',
    'glass',
    'backpack',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categories
            .map(
              (category) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/icons/$category.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

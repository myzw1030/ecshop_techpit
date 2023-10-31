import 'package:ecshop_techpit/home_page/home_header.dart';
import 'package:ecshop_techpit/home_page/item_categories.dart';
import 'package:ecshop_techpit/home_page/item_grid.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: const CustomScrollView(
        slivers: [
          HomeHeader(),
          ItemCategories(),
          ItemGrid(),
        ],
      ),
    );
  }
}

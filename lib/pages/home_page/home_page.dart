import 'package:ecshop_techpit/pages/cart_page/cart_page.dart';
import 'package:ecshop_techpit/pages/home_page/home_header.dart';
import 'package:ecshop_techpit/pages/home_page/item_categories.dart';
import 'package:ecshop_techpit/pages/home_page/item_grid.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const path = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Techpit Sports'),
        actions: [
          IconButton(
            onPressed: () => GoRouter.of(context).go('/${CartPage.path}'),
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

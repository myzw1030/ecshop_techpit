import 'package:ecshop_techpit/pages/item_page/item_cover.dart';
import 'package:ecshop_techpit/pages/item_page/item_details.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({required this.id, super.key});

  final String id;

  static const basePath = 'details';
  static const param = 'itemId';
  static const path = '$basePath/:$param';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ItemCover(id: id),
          ItemDetails(id: id),
        ],
      ),
    );
  }
}

import 'dart:convert';

import 'package:ecshop_techpit/model/category.dart';
import 'package:ecshop_techpit/model/data/item/item.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

final shopItemProvider = FutureProvider((ref) async {
  // mockの場合
  // final data = await rootBundle.loadString('assets/mock.json');
  // final json = (jsonDecode(data) as List).cast<Map<String, dynamic>>();

  // REST API経由
  final result = await Client().get(Uri.parse(
      'https://run.mocky.io/v3/77dfb9c4-825e-4d43-bbf3-563d1c473f9a'));
  final json = (jsonDecode(result.body) as List).cast<Map<String, dynamic>>();

  final items = json.map(Item.fromJson).toList();
  return items;
});

final shopItemIdsForSelectedCategoryProvider = Provider((ref) {
  final AsyncValue<List<Item>> items = ref.watch(shopItemProvider);
  final selectedCategory = ref.watch(selectedCategoryProvider);
  return items.whenData((items) => items
      .where((item) => item.category == selectedCategory)
      .map((item) => item.id)
      .toList());
});

final shopItemForIdProvider = Provider.family((ref, String id) {
  final AsyncValue<List<Item>> items = ref.watch(shopItemProvider);
  return items.whenData((items) => items.firstWhere((item) => item.id == id));
});

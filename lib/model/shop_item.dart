import 'dart:convert';

import 'package:ecshop_techpit/model/data/item/item.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final shopItemProvider = FutureProvider((ref) async {
  final data = await rootBundle.loadString('assets/mock.json');
  final json = (await jsonDecode(data) as List).cast<Map<String, dynamic>>();
  final items = json.map(Item.fromJson).toList();
  return items;
});

final shopItemIdsProvider = Provider((ref) {
  final AsyncValue<List<Item>> items = ref.watch(shopItemProvider);
  return items.whenData((items) => items.map((item) => item.id).toList());
});

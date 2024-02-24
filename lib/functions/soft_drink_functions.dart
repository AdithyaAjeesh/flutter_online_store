// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:futtter_store/data/softdrink_model/soft_drink_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier<List<SoftDrinkProduct>> softDrinkProductListNotifier =
    ValueNotifier([]);
void addSoftDrinkProduct(SoftDrinkProduct value) async {
  await Hive.openBox<SoftDrinkProduct>('softdrink');
  final softDrinkProductDB = await Hive.openBox<SoftDrinkProduct>('softdrink');
  softDrinkProductDB.add(value);
  softDrinkProductListNotifier.value.add(value);
  softDrinkProductListNotifier.notifyListeners();
}

Future<void> getAllBiriyaniProducts() async {
  await Hive.openBox<SoftDrinkProduct>('softdrink');
  final softDrinkProductDB = await Hive.openBox<SoftDrinkProduct>('softdrink');
  softDrinkProductListNotifier.value.clear();
  softDrinkProductListNotifier.value.addAll(softDrinkProductDB.values);
  softDrinkProductListNotifier.notifyListeners();
}

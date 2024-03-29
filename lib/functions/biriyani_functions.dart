// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:futtter_store/data/biriyani_model/biriyani_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier<List<BiriyaniProduct>> biriyaniProductListNotifier =
    ValueNotifier([]);
void addBiriyaniProduct(BiriyaniProduct value) async {
  
  await Hive.openBox<BiriyaniProduct>('biriyani');
  final biriyaniProductDB = await Hive.openBox<BiriyaniProduct>('biriyani');
  biriyaniProductDB.add(value);
  biriyaniProductListNotifier.value.add(value);
  biriyaniProductListNotifier.notifyListeners();
}

Future<void> getAllBiriyaniProducts() async {
    await Hive.openBox<BiriyaniProduct>('biriyani');

  final biriyaniProductDB = await Hive.openBox<BiriyaniProduct>('biriyani');
  biriyaniProductListNotifier.value.clear();
  biriyaniProductListNotifier.value.addAll(biriyaniProductDB.values);
  biriyaniProductListNotifier.notifyListeners();
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:futtter_store/data/biriyani_model/biriyani_model.dart';
import 'package:futtter_store/data/burger_model/burger_model.dart';
import 'package:futtter_store/data/cart_model/cart_model.dart';
import 'package:futtter_store/data/softdrink_model/soft_drink_model.dart';
import 'package:futtter_store/pages/admin_page/admin_page.dart';
import 'package:futtter_store/pages/startup/login.dart';
import 'package:futtter_store/pages/startup/splash_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(BurgerProductAdapter().typeId)) {
    Hive.registerAdapter(BurgerProductAdapter());
  }
  if (!Hive.isAdapterRegistered(BiriyaniProductAdapter().typeId)) {
    Hive.registerAdapter(BiriyaniProductAdapter());
  }
  if (!Hive.isAdapterRegistered(SoftDrinkProductAdapter().typeId)) {
    Hive.registerAdapter(SoftDrinkProductAdapter());
  }
  if (!Hive.isAdapterRegistered(CartItemAdapter().typeId)) {
    Hive.registerAdapter(CartItemAdapter());
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const LoginPage(),
        '/admin': (context) => const AdminPage(),
      },
    );
  }
}

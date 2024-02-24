import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:futtter_store/data/burger_model/burger_model.dart';
import 'package:futtter_store/functions/burger_functioins.dart';
import 'package:futtter_store/pages/shopping/product_page/burger/burger_card.dart';
import 'package:futtter_store/pages/shopping/product_page/burger/burger_details.dart';

class BurgerPage extends StatefulWidget {
  const BurgerPage({super.key});

  @override
  State<BurgerPage> createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  @override
  Widget build(BuildContext context) {
    getAllBurgerProducts();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ValueListenableBuilder(
            valueListenable: burgerProductListNotifier,
            builder: (context, List<BurgerProduct> burgerproductList, child) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (100 / 140),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: burgerproductList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final burgerProduct = burgerproductList[index];
                  log(burgerProduct.name);
                  return GestureDetector(
                    child: BurgerProductCard(burgerProduct: burgerProduct),
                    onLongPress: () {},
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              BurgerDetailsScreen(burgerProduct: burgerProduct),
                        ),
                      );
                    },
                  );
                },
              );
            },
          ))
        ],
      ),
    );
  }
}

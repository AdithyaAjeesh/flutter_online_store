import 'package:flutter/material.dart';
import 'package:futtter_store/data/biriyani_model/biriyani_model.dart';
import 'package:futtter_store/functions/biriyani_functions.dart';
import 'package:futtter_store/pages/shopping/product_page/biriyani/biriyani_card.dart';
import 'package:futtter_store/pages/shopping/product_page/biriyani/biriyani_details.dart';

class BiriyaniPage extends StatefulWidget {
  const BiriyaniPage({super.key});

  @override
  State<BiriyaniPage> createState() => _BiriyaniPageState();
}

class _BiriyaniPageState extends State<BiriyaniPage> {
  @override
  Widget build(BuildContext context) {
    getAllBiriyaniProducts();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: biriyaniProductListNotifier,
              builder:
                  (context, List<BiriyaniProduct> biryaniproductList, child) {
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (100 / 140),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: biryaniproductList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    final biriyaniProduct = biryaniproductList[index];
                    return GestureDetector(
                      child:
                          BiriyaniProductCard(biriyaniProduct: biriyaniProduct),
                      onLongPress: () {},
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => BiriyaniDetailsScreen(
                                biriyaniProduct: biriyaniProduct),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

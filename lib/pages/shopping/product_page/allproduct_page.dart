import 'package:flutter/material.dart';
import 'package:futtter_store/data/softdrink_model/soft_drink_model.dart';
import 'package:futtter_store/data/burger_model/burger_model.dart';
import 'package:futtter_store/data/biriyani_model/biriyani_model.dart';
import 'package:futtter_store/functions/burger_functioins.dart';
import 'package:futtter_store/functions/soft_drink_functions.dart';
import 'package:futtter_store/functions/biriyani_functions.dart';
import 'package:futtter_store/pages/shopping/product_page/softDrink/soft_drink_card.dart';
import 'package:futtter_store/pages/shopping/product_page/burger/burger_card.dart';
import 'package:futtter_store/pages/shopping/product_page/biriyani/biriyani_card.dart';
import 'package:futtter_store/pages/shopping/product_page/softDrink/soft_drink_details.dart';
import 'package:futtter_store/pages/shopping/product_page/burger/burger_details.dart';
import 'package:futtter_store/pages/shopping/product_page/biriyani/biriyani_details.dart';

class AllProductPage extends StatefulWidget {
  const AllProductPage({super.key});

  @override
  State<AllProductPage> createState() => _AllProductPageState();
}

class _AllProductPageState extends State<AllProductPage> {
  List<dynamic> _allProducts = [];

  @override
  void initState() {
    super.initState();
    _getAllProducts();
  }

  void _getAllProducts() async {
    await getAllSoftDrinkProducts();
    await getAllBurgerProducts();
    await getAllBiriyaniProducts();
    setState(() {
      _allProducts = [
        ...softDrinkProductListNotifier.value,
        ...burgerProductListNotifier.value,
        ...biriyaniProductListNotifier.value,
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 140),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: _allProducts.length,
        itemBuilder: (context, index) {
          final product = _allProducts[index];
          return GestureDetector(
            onTap: () {
              _navigateToProductDetails(product);
            },
            child: _buildProductCard(product),
          );
        },
      ),
    );
  }

  Widget _buildProductCard(dynamic product) {
    if (product is SoftDrinkProduct) {
      return SoftDrinkProductCard(softDrinkProduct: product);
    } else if (product is BurgerProduct) {
      return BurgerProductCard(burgerProduct: product);
    } else if (product is BiriyaniProduct) {
      return BiriyaniProductCard(biriyaniProduct: product);
    }
    return const SizedBox();
  }

  void _navigateToProductDetails(dynamic product) {
    if (product is SoftDrinkProduct) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SoftDrinkDetailsScreen(softDrinkProduct: product),
      ));
    } else if (product is BurgerProduct) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => BurgerDetailsScreen(burgerProduct: product),
      ));
    } else if (product is BiriyaniProduct) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => BiriyaniDetailsScreen(biriyaniProduct: product),
      ));
    }
  }
}

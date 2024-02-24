import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:futtter_store/widgets/product_container.dart';

class CatagoryWidget extends StatefulWidget {
  const CatagoryWidget({super.key});

  @override
  State<CatagoryWidget> createState() => _CatagoryWidgetState();
}

class _CatagoryWidgetState extends State<CatagoryWidget> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProductContainerSmall(
            height: 120,
            width: 120,
            image: 'assets/71YBmiSj-cL.jpg',
            index: 1,
          ),
          ProductContainerSmall(
            height: 120,
            width: 120,
            image: 'assets/istockphoto-840902892-612x612.jpg',
            index: 2,
          ),
          ProductContainerSmall(
            height: 120,
            width: 120,
            image:
                'assets/isolated-pizza-with-mushrooms-olives_219193-8149.avif',
            index: 3,
          ),
          ProductContainerSmall(
            height: 120,
            width: 120,
            image:
                'assets/pngtree-chicken-biryani-front-view-png-image_9167532.png',
            index: 4,
          ),
          ProductContainerSmall(
            height: 120,
            width: 120,
            image:
                'assets/coold-sweet-ice-cream-with-chocolate_144627-7297.avif',
            index: 5,
          )
        ],
      ),
    );
  }
}

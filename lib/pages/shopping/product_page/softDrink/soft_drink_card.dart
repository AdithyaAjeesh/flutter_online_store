
import 'package:flutter/material.dart';
import 'package:futtter_store/data/softdrink_model/soft_drink_model.dart';

class SoftDrinkProductCard extends StatefulWidget {
  final SoftDrinkProduct softDrinkProduct;
  const SoftDrinkProductCard({super.key, required this.softDrinkProduct});

  @override
  State<SoftDrinkProductCard> createState() => _SoftDrinkProductCardState();
}

class _SoftDrinkProductCardState extends State<SoftDrinkProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 134, 128, 128).withOpacity(0.1),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.redAccent,
              ),
            ],
          ),
          SizedBox(
            height: 130,
            width: 130,
            child: Image.asset(
              widget.softDrinkProduct.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            widget.softDrinkProduct.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '\$ ${widget.softDrinkProduct.price}',
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.redAccent),
          )
        ],
      ),
    );
  }
}

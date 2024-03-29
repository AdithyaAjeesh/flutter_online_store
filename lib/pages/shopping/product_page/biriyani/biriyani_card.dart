
import 'package:flutter/material.dart';
import 'package:futtter_store/data/biriyani_model/biriyani_model.dart';

class BiriyaniProductCard extends StatefulWidget {
  final BiriyaniProduct biriyaniProduct;
  const BiriyaniProductCard({super.key, required this.biriyaniProduct});

  @override
  State<BiriyaniProductCard> createState() => _BiriyaniProductCardState();
}

class _BiriyaniProductCardState extends State<BiriyaniProductCard> {
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
              widget.biriyaniProduct.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            widget.biriyaniProduct.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '\$ ${widget.biriyaniProduct.price}',
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

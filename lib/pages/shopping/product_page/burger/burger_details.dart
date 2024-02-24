
import 'package:flutter/material.dart';
import 'package:futtter_store/data/burger_model/burger_model.dart';

class BurgerDetailsScreen extends StatefulWidget {
  final BurgerProduct burgerProduct;
  const BurgerDetailsScreen({super.key, required this.burgerProduct});

  @override
  State<BurgerDetailsScreen> createState() => _BurgerDetailsScreenState();
}

class _BurgerDetailsScreenState extends State<BurgerDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.burgerProduct.name,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 170, 59),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 30),
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 170, 59),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Image.asset(widget.burgerProduct.image),
              ),
            ],
          ),
          Text(
            widget.burgerProduct.name,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(25),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 219, 218, 218),
            ),
            child: Column(
              children: [
                Text(
                  widget.burgerProduct.description,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Price: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '\$ ${widget.burgerProduct.price}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'GST: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '5 %',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delevery Time: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '30 Min',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 35),
              ],
            ),
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 170, 59),
            ),
            child: const Text('Add To Cart'),
          )
        ],
      ),
    );
  }
}

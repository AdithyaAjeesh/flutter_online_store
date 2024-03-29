import 'package:flutter/material.dart';
import 'package:futtter_store/functions/cart_function.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    getAllCartItems();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor: const Color.fromARGB(255, 255, 170, 59),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: cartItemListNotifier.value.length,
        itemBuilder: (context, index) {
          final cartItem = cartItemListNotifier.value[index];
          return Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 233, 224, 224),
            ),
            padding: const EdgeInsets.all(20),
            height: 200,
            child: Row(
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset(cartItem.image),
                ),
                const SizedBox(width: 50),
                Column(
                  children: [
                    Text(
                      cartItem.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      cartItem.price,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          deleteCartItem(index);
                        });
                      },
                      label: const Text('DELETE'),
                      icon: const Icon(Icons.delete),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

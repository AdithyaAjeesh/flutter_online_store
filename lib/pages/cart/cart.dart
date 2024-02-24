import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 255, 170, 59),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 15),
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 250, 237, 182)),
              child: Row(
                children: [
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 170, 59),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Image(
                      image: AssetImage(
                          'assets/pngtree-chicken-biryani-front-view-png-image_9167532.png'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        const Text(
                          'Chicken Biriyani',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const Text(
                          'Price: 80',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.redAccent),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 170, 59),
                              ),
                              child: const Text(
                                'Buy',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text('OR'),
                            const SizedBox(width: 5),
                            ElevatedButton.icon(
                              onPressed: () {},
                              label: const Text('Delete'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.redAccent),
                              icon: const Icon(Icons.delete),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text('Count: 1'),
                        Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {}, child: const Text('Add')),
                            const SizedBox(width: 5),
                            const Text('OR'),
                            const SizedBox(width: 5),
                            ElevatedButton(
                                onPressed: () {}, child: const Text('Delete'))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

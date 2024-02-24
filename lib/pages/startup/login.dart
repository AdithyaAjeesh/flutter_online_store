import 'package:flutter/material.dart';
import 'package:futtter_store/widgets/bottom_navbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 450,
          width: 320,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 170, 59),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Food',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(color: Colors.black),
                      child: const Text(
                        'HUB',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 170, 59),
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                    )
                  ],
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Enter UserName',
                ),
              ),
              const SizedBox(height: 25),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Enter PassWord'),
              ),
              const SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const BottomNavBar()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 170, 59),
                  ),
                ),
              ),
              const Text('OR'),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text(
                  'SignUp',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 170, 59),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

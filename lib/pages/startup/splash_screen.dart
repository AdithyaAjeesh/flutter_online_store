import 'dart:async';

import 'package:flutter/material.dart';
import 'package:futtter_store/pages/startup/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginPage()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(5),
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
      ),
    );
  }
}

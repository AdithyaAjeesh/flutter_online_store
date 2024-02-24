
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: const Color.fromARGB(255, 255, 170, 59),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          _buildListMainItem(text: 'Settings'),
          _buildListItem(text: 'Become Admin', ro: '/admin'),
          _buildListItem(text: 'Log Out', ro: '/login'),
        ],
      ),
    );
  }

  _buildListMainItem({required String text}) => Container(
        width: double.infinity,
        height: 80,
        margin: const EdgeInsets.only(top: 15),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 170, 59),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  _buildListItem({required String text, required String ro}) => GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(ro);
        },
        child: Container(
          width: double.infinity,
          height: 80,
          margin: const EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 230, 205, 174),
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
}

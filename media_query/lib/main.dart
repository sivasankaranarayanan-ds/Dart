import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: mediaQuery.size.width * 0.3,
            decoration: const BoxDecoration(color: Colors.purple),
          ),
          Container(
            width: mediaQuery.size.width * 0.4,
            decoration: const BoxDecoration(color: Colors.red),
          ),
          Container(
            width: mediaQuery.size.width * 0.3,
            decoration: const BoxDecoration(color: Colors.blue),
          )
        ],
      ),
    );
  }
}

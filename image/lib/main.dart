import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Local image
              Image.asset(
                'Company_Logo/spring boot logo.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 20),
              // Network image
              Image.network(
                'https://plus.unsplash.com/premium_photo-1674831527054-f8d0a89e368d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

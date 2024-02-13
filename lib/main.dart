import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String value = 'Test';

  void clickMe() {
    setState(() {
      value = "Hello Flutter!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Text('$value'),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: clickMe,
          )
        ],
      ),
    );
  }
}

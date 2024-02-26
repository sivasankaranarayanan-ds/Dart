import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Relative Width and Height Demo'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            color: Colors.blue,
            width: 300.0,
            height: 300.0,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                // Calculate width and height relative to parent size
                double width = constraints.maxWidth * 0.8;
                double height = constraints.maxHeight * 0.5;

                return Container(
                  width: width,
                  height: height,
                  color: Colors.black,
                  child: const Center(
                    child: Text(
                      'Relative Size',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView with Images Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView with Images Example'),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(
            6,
            (index) => GridTile(
              child: Image.network(
                'https://images.unsplash.com/photo-1596073419667-9d77d59f033f?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Example image URL
                fit: BoxFit.cover,
              ),
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                title: Text('Image $index'),
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

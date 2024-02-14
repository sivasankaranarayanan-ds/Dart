import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Smart Crew'),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: const [
            ListTile(
              title: Text('Satya --> Chief'),
            ),
            ListTile(
              title: Text('Siva'),
            ),
            ListTile(
              title: Text('Adhithya'),
            ),
            ListTile(
              title: Text('Solomon'),
            ),
            ListTile(
              title: Text('Abisheik'),
            ),
            ListTile(
              title: Text('Prakash'),
            ),
            ListTile(
              title: Text('Subair'),
            ),
            ListTile(
              title: Text('Jothika'),
            ),
            ListTile(
              title: Text('Kabila'),
            ),
            ListTile(
              title: Text('Smily'),
            ),
            ListTile(
              title: Text('Nellai'),
            ),
            ListTile(
              title: Text('Java'),
            ),
            ListTile(
              title: Text('Flutter'),
            ),
            ListTile(
              title: Text('Python'),
            ),
            ListTile(
              title: Text('Go'),
            ),
            // Add more ListTiles as needed
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView with ListTile Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView with ListTile and Image'),
        ),
        body: ListView(
          children: const <Widget>[
            ListTileWithImage(
              image: AssetImage('Company_Logo/spring boot logo.png'),
              title: 'Spring Boot',
              subtitle: 'This is the Spring Boot Logo',
            ),
            ListTileWithImage(
              image: AssetImage('Company_Logo/thumbnail_Outlook-gvgyv24z.png'),
              title: 'Datasirpi',
              subtitle: 'This is the Datasirpi Logo',
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ListTileWithImage extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final String subtitle;

  const ListTileWithImage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: image,
      ),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}

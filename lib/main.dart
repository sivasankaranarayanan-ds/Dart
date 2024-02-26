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
        title: const Text("Render Overflow"),
        backgroundColor: Colors.teal[700],
      ),
      //if you remove the singlechildscrollview it will have overflow error
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Java"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("James Gosling"),
            ),
            ListTile(
              title: Text("Python"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("Guido van Rossum"),
            ),
            ListTile(
              title: Text("C"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("Dennis Ritchie"),
            ),
            ListTile(
              title: Text("JavaScript"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("Brendan Eich"),
            ),
            ListTile(
              title: Text("PHP"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("Rasmus Lerdorf"),
            ),
            ListTile(
              title: Text("C++"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("Bjarne Stroustrup"),
            ),
            ListTile(
              title: Text("Angular"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("Miško Hevery"),
            ),
            ListTile(
              title: Text("React"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("Jordan Walke"),
            )
          ],
        ),
      ),
    ));
  }
}

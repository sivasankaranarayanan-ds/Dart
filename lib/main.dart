import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Bottom Navigation Bar",
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final tabs = [
    Center(
      child: Text("Home Page"),
    ),
    Center(
      child: Text("Search Page"),
    ),
    Center(
      child: Text("Person Page"),
    ),
    Center(
      child: Text("Camera Page"),
    ),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
        backgroundColor: Colors.blue,
      ),
      body: tabs[index],
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,  //if we want fixed icon go with this or else (default)shifting icons will be showing
        iconSize: 30,
        //selectedFontSize: 20, if we need
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Person",
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: "Camera",
              backgroundColor: Colors.blueGrey),
        ],
        onTap: (current_index) {
          setState(() {
            index = current_index;
          });
        },
      ),
    );
  }
}

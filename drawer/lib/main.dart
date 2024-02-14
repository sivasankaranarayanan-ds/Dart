import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drawer"),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(                                        //drawer starting point 
          elevation: 16.0,
          child: Column(children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              accountName: Text('Xavier'),
              accountEmail: Text('xavier@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
              ),
            )
          ]),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

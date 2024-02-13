import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      //Material App is a container for our app.
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //darkTheme: ThemeData(brightness: Brightness.dark),
      //themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //Scaffold is a basic layout structure for the app.
        appBar: AppBar(
          title: Text('MaterialApp Widget Title'),
        ),
        body: Center(
          child: Text("MaterialApp Widget", style: TextStyle(fontSize: 24)),
        ),
      )));
}

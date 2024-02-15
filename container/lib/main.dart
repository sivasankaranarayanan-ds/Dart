import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container and Card Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x00ffeeee),
      appBar: AppBar(
        title: const Text('Container and Card'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Container
              Container(
                width: 200,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.lime,
                  border: Border.all(color: Colors.lightBlue, width: 10),
                ),
                child: const Text(
                  "Container",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontSize: 30),
                ),
              ),
              const SizedBox(height: 20),

              //Card
              Card(
                color: Colors.white,
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Try not to become a man of success, but rather try to become a man of value",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '-Albert Einstein',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

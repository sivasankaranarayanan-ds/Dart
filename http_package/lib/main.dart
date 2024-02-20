import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter http'),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Center(
      child: Container(
        child: ElevatedButton(
            onPressed: () async {
              var url = Uri.http(
                  "my-json-server.typicode.com", "/typicode/demo/posts");
              var response = await http.get(url);
              print("Response Code: ${response.statusCode}");
              print("Response body ${response.body}");
            },
            child: const Text('http call')),
      ),
    );
  }
}

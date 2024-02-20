import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              await fetchPost();
            },
            child: const Text('GET Call'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              await createPost();
            },
            child: const Text('POST Call'),
          ),
        ],
      ),
    );
  }

  Future<void> fetchPost() async {
    var url = Uri.http("my-json-server.typicode.com", "/typicode/demo/posts");
    var response = await http.get(url);
    print("GET Response Code: ${response.statusCode}");
    print("GET Response body: ${response.body}");
  }

  Future<void> createPost() async {
    var url = Uri.http("my-json-server.typicode.com", "/typicode/demo/posts");
    var response = await http.post(
      url,
      body: <String, String>{
        'title': 'foo',
        'body': 'bar',
        'userId': '1',
      },
    );
    print("POST Response Code: ${response.statusCode}");
    print("POST Response body: ${response.body}");
  }
}

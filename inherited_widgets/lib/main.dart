import 'package:flutter/material.dart';
import 'package:inherited_widgets/inherited_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyInherited(
        age: 30,
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home(),
        ));
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    int userAge = MyInherited.of(context).age;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited Widget Example'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('User Age: $userAge'),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NewScreen(),
                ),
              );
            },
            child: const Text("Navigate"),
          )
        ],
      )),
    );
  }
}

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int userAge = MyInherited.of(context).age;
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('User Age: $userAge'),
          const SizedBox(
            height: 15,
          ),
        ],
      )),
    );
  }
}

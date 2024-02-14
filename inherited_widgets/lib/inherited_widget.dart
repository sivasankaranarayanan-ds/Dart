import 'package:flutter/material.dart';

class MyInherited extends InheritedWidget {
  final int age;
  const MyInherited({super.key, required this.age, required Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    //TODO: implement updateShouldNotify
    //implemented this method to control when the widget should be updated.
    return true;
  }

  static MyInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInherited>()!;
  }                         
}

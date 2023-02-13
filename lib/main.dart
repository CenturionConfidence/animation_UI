import 'package:animation_testing/screens/home.dart';
import 'package:animation_testing/screens/sand_box.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ninja Trips',
      home: Home(),
    );
  }
}

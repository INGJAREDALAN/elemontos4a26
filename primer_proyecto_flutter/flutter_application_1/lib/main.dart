import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto 1',
      home: Screen1(),
    );
  }
}

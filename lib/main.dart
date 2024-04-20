import 'package:flutter/material.dart';
import 'package:tourist_guide/Screens/Home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue[100],
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.grey.shade100),
          home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'home.dart';
import 'new_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coin',
      theme: ThemeData(primaryColor: Colors.pink),
      home: HomePage(),
    );
  }
}

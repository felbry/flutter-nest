import 'package:flutter/material.dart';
import './pages/home-page/index.dart';
import './routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '阿晶和老柴',
      routes: routes,
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import '../../components/drawer-builder.dart' show drawerBuilder;
import '../../loading.dart' show Loading;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Loading.ctx = context;
    return Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        drawer: drawerBuilder(context),
        body: Center(
          child: Text('Hello world'),
        ));
  }
}

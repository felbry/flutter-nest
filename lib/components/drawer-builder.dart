import 'package:flutter/material.dart';
import '../route-keys.dart';

Widget drawerBuilder(BuildContext context) {
  return Drawer(
    child: ListView(children: <Widget>[
      ListTile(
        leading: Icon(Icons.home),
        title: Text('首页'),
        onTap: () {
          if (ModalRoute.of(context).settings.name == '/') {
            Navigator.pop(context);
            return;
          }
          Navigator.popAndPushNamed(context, '/');
        },
      ),
      ListTile(
        leading: Icon(Icons.import_contacts),
        title: Text('博客'),
        onTap: () {
          if (ModalRoute.of(context).settings.name == routeKeys['blog']) {
            Navigator.pop(context);
            return;
          }
          Navigator.popAndPushNamed(context, routeKeys['blog']);
        },
      ),
      // ListTile(
      //   leading: Icon(Icons.info),
      //   title: Text('关于'),
      //   onTap: () {
      //     if (ModalRoute.of(context).settings.name == routeKeys['about']) {
      //       Navigator.pop(context);
      //       return;
      //     }
      //     Navigator.popAndPushNamed(context, routeKeys['about']);
      //   },
      // ),
    ]),
  );
}

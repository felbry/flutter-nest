
import 'package:flutter/material.dart';
import './route-keys.dart';
import './pages/blog-page/index.dart';

Map<String, WidgetBuilder> routes = {
  routeKeys['blog']: (BuildContext context) => BlogPage(),
};
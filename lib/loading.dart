import 'package:flutter/material.dart';

class Loading {
  static dynamic ctx;
  static void before() {
    showDialog(
      context: ctx,
      builder: (context) {
        return Text('Loading');
      },
    );
  }
  static void complete() {
    Navigator.of(ctx, rootNavigator: true).pop();
  }
}
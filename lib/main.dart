import 'package:flutter/material.dart';
import 'locator.dart' as globals;
import 'my_app.dart';

void main() {
  globals.setupServiceLocator();
  runApp(const MyApp());
}

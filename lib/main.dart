import 'package:flutter/material.dart';
import 'package:japan_tourism/detail_screen.dart';
import 'package:japan_tourism/model/japan_place.dart';

import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Japan Tourism',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}


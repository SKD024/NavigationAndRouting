import 'package:flutter/material.dart';
import 'package:navigationandrouting/Screen/second_screen.dart';
import 'package:navigationandrouting/Screen/third_screen.dart';

import 'Screen/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) {
          return FirstScreeen();
        },
        'second': (ctx) {
          return SecondScreeen(dataFromFirst: 'Test Data');
        },
        'Third': (ctx) {
          return ThirdScreen();
        },
      },
      initialRoute: '/',
    );
  }
}

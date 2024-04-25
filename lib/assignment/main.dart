import 'package:flutter/material.dart';
import 'package:practice/assignment/home_screen.dart';

main () {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }

}
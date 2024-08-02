import 'package:c11_mon/task1.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {




    var routename;
    return MaterialApp(
      title: 'Flutter Demo',
      home:  ScreenOne (),
      );

   }

}
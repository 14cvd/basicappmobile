import 'package:basicappmobile/Apps/firstPage.dart';
import 'package:basicappmobile/Apps/scrollList.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: OnePage(),
      ),
    );
  }
}

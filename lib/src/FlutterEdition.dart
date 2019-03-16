import 'package:flutter/material.dart';
import 'package:flutter_edition_1/src/screens/HomeScreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
    );
  }
}
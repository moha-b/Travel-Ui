// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'Layouts/Pages/page_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xFF3EBACE),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFD8ECF1)),
          scaffoldBackgroundColor: Color(0xFFF3F5F7)),
      home: homeScreen(),
    );
  }
}

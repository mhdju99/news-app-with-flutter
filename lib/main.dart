import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_1/views/home_page.dart';
import 'package:news_1/services/news_servic.dart';

void main() {
  runApp(const MyApp());
 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/core/themes/dark_theme.dart';
import 'package:portfolio/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mahmud Ebne Zaman',
      theme: darkTheme(),
      home: const AppHomePage(title: 'Mahmud Ebne Zaman'),
    );
  }
}
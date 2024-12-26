import 'package:flutter/material.dart';
import 'package:news/pages/home_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

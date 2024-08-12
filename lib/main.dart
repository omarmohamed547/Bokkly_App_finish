import 'package:flutter/material.dart';

void main() {
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
    );
  }
}

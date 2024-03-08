import 'package:flutter/material.dart';
import 'package:todoapp/screens/to_do_screen.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      color: Colors.white,
      home: const ToDoScreen(),
    );
  }
}

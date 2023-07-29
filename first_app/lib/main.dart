import 'package:flutter/material.dart';
import 'package:first_app/presentation/screens/counters/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.black12),
        debugShowCheckedModeBanner: false,
        home: const CounterScreen());
  }
}

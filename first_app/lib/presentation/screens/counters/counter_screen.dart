import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  void _inclement() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: _inclement, child: const Icon(Icons.plus_one)),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "10",
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          Text(
            "clicks",
            style: TextStyle(fontSize: 40),
          )
        ],
      )),
    );
  }
}

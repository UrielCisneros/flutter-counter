import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _clickCounter = 0;

  void _inclement() {
    setState(() {
      _clickCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _inclement, child: const Icon(Icons.plus_one)),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$_clickCounter",
            style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          Text(
            'Click${_clickCounter == 1 ? '' : 's'}',
            style: const TextStyle(fontSize: 40),
          )
        ],
      )),
    );
  }
}

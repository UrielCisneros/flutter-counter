import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int _clickCounter = 0;

  void _inclement() {
    setState(() {
      _clickCounter++;
    });
  }

  void _decrement() {
    setState(() {
      if (_clickCounter == 0) return;
      _clickCounter--;
    });
  }

  void _reset() {
    setState(() {
      _clickCounter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Fucntions Screen"),
        actions: [
          IconButton(onPressed: _reset, icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloatingActionButton(
            icon: Icons.refresh_rounded,
            onPressed: _reset,
          ),
          const SizedBox(
            height: 5,
          ),
          CustomFloatingActionButton(
            icon: Icons.plus_one,
            onPressed: _inclement,
          ),
          const SizedBox(
            height: 5,
          ),
          CustomFloatingActionButton(
            icon: Icons.exposure_minus_1,
            onPressed: _decrement,
          )
        ],
      ),
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

class CustomFloatingActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomFloatingActionButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: onPressed, child: Icon(icon));
  }
}

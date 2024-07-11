import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text('Counter: $x'),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      x++;
                    });
                  },
                  child: const Text('Click Me'),
                ),
              ],
            ),
          )),
    );
  }
}

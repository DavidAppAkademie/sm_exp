import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sm_exp/counter_provider.dart';

class MyCounter extends StatelessWidget {
  const MyCounter({super.key});

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
                Text(
                    'Counter: ${context.watch<CounterProvider>().getCounter()}'),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {
                    context.read<CounterProvider>().increment();
                  },
                  child: const Text('Click Me'),
                ),
              ],
            ),
          )),
    );
  }
}

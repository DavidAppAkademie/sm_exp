import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sm_exp/counter_provider.dart';
import 'package:sm_exp/my_counter.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Counter: ${context.watch<CounterProvider>().getCounter()}'),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyCounter(),
                MyCounter(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

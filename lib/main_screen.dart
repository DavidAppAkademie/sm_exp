import 'package:flutter/material.dart';
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
            // Text('Counter: $counter'),
            // const SizedBox(height: 16),
            // FilledButton(
            //   onPressed: incrementCounter,
            //   child: const Text('Increment'),
            // ),
            // const SizedBox(height: 80),
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

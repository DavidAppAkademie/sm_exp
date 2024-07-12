import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sm_exp/counter_provider.dart';
import 'package:sm_exp/main_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(
            create: (_) => CounterProvider()),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey)),
      home: const MainScreen(),
    );
  }
}

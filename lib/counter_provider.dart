import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  // globaler State
  int _counter = 0;

  int getCounter() {
    return _counter;
  }

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
  }
}

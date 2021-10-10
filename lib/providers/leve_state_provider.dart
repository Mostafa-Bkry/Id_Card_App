import 'package:flutter/material.dart';

class LevelState extends ChangeNotifier {
  int counter = 0;

  void increase() {
    counter += 1;
    print(counter);
    notifyListeners();
  }

  void reset() {
    counter = 0;
    print(counter);
    notifyListeners();
  }
}
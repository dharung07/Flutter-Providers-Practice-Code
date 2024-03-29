import 'package:flutter/material.dart';

class NumberProvider extends ChangeNotifier {
  List<int> numbersList = [1, 2, 3];

  void addNumber() {
    int lastNumber = numbersList.last;
    numbersList.add(lastNumber + 1);
    notifyListeners();
  }
}

import 'package:flutter/foundation.dart';

class ColorChange with ChangeNotifier {
  double change = 1;
  double get val => change;

  void setValue(double valu) {
    change = valu;
    notifyListeners();
  }
}

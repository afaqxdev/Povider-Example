import 'package:flutter/foundation.dart';

// ignore: camel_case_types
class timer with ChangeNotifier {
  int count = 0;

  void settimer() {
    count++;
    notifyListeners();
  }
}

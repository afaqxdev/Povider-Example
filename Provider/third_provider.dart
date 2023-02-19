import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Favourite with ChangeNotifier {
  List<int> select = [];
  List<int> get sel => select;
  void Selectitem(int value) {
    select.add(value);
    notifyListeners();
  }

  void removeitem(int value) {
    select.remove(value);
    notifyListeners();
  }
}

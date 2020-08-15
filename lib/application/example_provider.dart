import 'package:flutter/foundation.dart';

class ExampleProvider extends ChangeNotifier {
  String _data;

  void setDataString(String data) {
    this._data = data;
    notifyListeners();
  }

  String get getDataString => this._data;
}

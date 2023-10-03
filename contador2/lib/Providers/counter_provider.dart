import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0; //Variable privada, la usamos en el provider namas

  int get counter => _counter; // Variable publica

  void increment() {
    _counter++;
    notifyListeners(); // Le avisa a los listeners que cambio un dato
  }

  void decrement() {
    _counter--;
    notifyListeners(); // Le avisa a los listeners que cambio un dato
  }

  void restart() {
    _counter = 0;
    notifyListeners(); // Le avisa a los listeners que cambio un dato
  }

  void multiDos() {
    _counter = _counter * 2;
    notifyListeners(); // Le avisa a los listeners que cambio un dato
  }

  void multiTres() {
    _counter = _counter * 3;
    notifyListeners(); // Le avisa a los listeners que cambio un dato
  }

  void multiCinco() {
    _counter = _counter * 5;
    notifyListeners(); // Le avisa a los listeners que cambio un dato
  }

  bool primo() {
    if (_counter <= 1) return false;
    for (int i = 2; i < _counter; i++) {
      if (_counter % i == 0) return false;
    }
    return true;
  }
}

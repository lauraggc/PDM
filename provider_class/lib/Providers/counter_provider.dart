import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier{
  int _counter = 0; //Variable privada, la usamos en el provider namas

  int get counter => _counter; // Variable publica

  void increment(){
    _counter++;
    notifyListeners(); // Le avisa a los listeners que cambio un dato
  }

  void multiDos(){
    _counter = _counter*2;
    notifyListeners(); // Le avisa a los listeners que cambio un dato
  }

}
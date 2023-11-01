import 'package:flutter/material.dart';

class ProviderState with ChangeNotifier {
  List<String> reservations = [];

  void addReservation(String reservation) {
    reservations.add(reservation);
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ThemeEvent { toggle }

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(_lightTheme);

  static final ThemeData _lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.pink[300],
    backgroundColor: Colors.yellow[50],
    hintColor: Colors.purple[100],
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.black),
    ),
  );

  static ThemeData _darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.pink,
    backgroundColor: Colors.black,
    hintColor: Colors.purple[100],
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.white),
    ),
  );

  @override
  Stream<ThemeData> mapEventToState(ThemeEvent event) async* {
    if (event == ThemeEvent.toggle) {
      yield state == _lightTheme ? _darkTheme : _lightTheme;
    }
  }
}

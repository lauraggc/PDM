import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarea3p/home_page.dart';
import 'package:tarea3p/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => ProviderState(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: HomePage(),
    );
  }
}

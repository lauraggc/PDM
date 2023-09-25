import 'package:flutter/material.dart';
import 'package:tarea3_5p/home_page.dart';

void main() {
  List<RecetaElementos> desayunos = [
    RecetaElementos(
        "Pan francés", "assets/pan.jpg", "10 minutos", "Simple", "barata", [
      "2 rebanadas de pan",
      "100 ml de leche",
      "1 huevo",
      "Canela",
      "Mantequilla",
      "Fruta al gusto"
    ], [
      "1. Mezclar la leche, el huevo y la canela",
      "2. Huntar mantequilla en el sarten",
      "3. Hundir los panes en la mezcla",
      "4. Poner los panes en el sarten de cada lado, hasta que se doren"
          "5. Servirlos con fruta al gusto"
    ]),
    RecetaElementos(
        "Hotcakes", "assets/hotcakes.jpg", "15 minutos", "Medio", "barata", [
      "2 rebanadas de pan",
      "100 ml de leche",
      "1 huevo",
      "Canela",
      "Fruta al gusto"
    ], [
      "pasos"
    ])
  ];

  runApp(
    MaterialApp(
      title: 'Desayunos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 38, 30, 30),
      ),
      home: MyApp(
        desayunos: desayunos,
      ),
    ),
  );
}

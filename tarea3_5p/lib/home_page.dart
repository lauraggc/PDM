import 'package:flutter/material.dart';

class RecetaElementos {
  final String nombre;
  final String imagen;
  final String duracion;
  final String dificultad;
  final String accesible;
  final List<String> ingredientes;
  final List<String> pasos;

  RecetaElementos(this.nombre, this.imagen, this.duracion, this.dificultad,
      this.accesible, this.ingredientes, this.pasos);
}

class MyApp extends StatelessWidget {
  final List<RecetaElementos> desayunos;

  const MyApp({Key? key, required this.desayunos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView.builder(itemBuilder: (context, index) {}));
  }
}

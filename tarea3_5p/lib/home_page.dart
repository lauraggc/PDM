// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tarea3_5p/recipe.dart';

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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Desayunos'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black87,
        body: Padding(
          padding:
              const EdgeInsets.all(8.0), // Espaciado alrededor del ListView
          child: ListView.builder(
            itemCount: desayunos.length,
            itemBuilder: (context, index) {
              RecetaElementos receta = desayunos[index];
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Recipe(
                          receta: receta,
                        ),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            receta.imagen,
                            width: double.infinity,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              color: Colors.black.withOpacity(0.7),
                              width: double.infinity,
                              height: 70,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    receta.nombre,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        color: Colors.white,
                                        size: 17,
                                      ),
                                      Text(
                                        receta.duracion,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Icon(
                                        Icons.work,
                                        color: Colors.white,
                                        size: 17,
                                      ),
                                      Text(
                                        receta.dificultad,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Icon(
                                        Icons.attach_money_sharp,
                                        color: Colors.white,
                                        size: 17,
                                      ),
                                      Text(
                                        receta.accesible,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: 10), // Espacio adicional entre las recetas
                    ],
                  ));
            },
          ),
        ),
      ),
    );
  }
}

import 'package:desafio_4/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:desafio_4/info.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';

class RecetaElementos {
  final String nombre;
  final String imagen;
  final String mapa;
  final String descripcion;
  final List<String> lugares;

  RecetaElementos(
      this.nombre, this.imagen, this.mapa, this.descripcion, this.lugares);
}

class MyApp extends StatelessWidget {
  final List<RecetaElementos> desayunos;
  final ThemeBloc themeBloc = ThemeBloc();
  LocationData? _locationData;
  Location location = Location();

  MyApp({Key? key, required this.desayunos}) : super(key: key);

  Future<void> _showLocationAlert(BuildContext context) async {
    if (_locationData == null) {
      // Si la ubicación no se ha obtenido, muestra un aviso al usuario.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Ubicación no disponible'),
            content: Text(
                'No se pudo obtener la ubicación actual. Verifica los permisos'),
            actions: <Widget>[
              TextButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider(
      create: (context) => themeBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Turismo'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black87,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
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
                                      GestureDetector(
                                        onTap: () {
                                          // Llama al método para mostrar el aviso de ubicación
                                          _showLocationAlert(context);
                                        },
                                        child: Icon(
                                          Icons.map,
                                          color: Colors.white,
                                          size: 17,
                                        ),
                                      ),
                                      Text(
                                        receta.mapa,
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
                      SizedBox(height: 10),
                    ],
                  ));
            },
          ),
        ),
      ),
    ));
  }
}

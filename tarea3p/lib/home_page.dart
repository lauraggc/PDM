import 'package:flutter/material.dart';
import 'package:tarea3p/info_lugar.dart';
import 'package:tarea3p/item_actividad.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Reserva tu hotel'),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            double quarterHeight = constraints.maxHeight / 4;
            return Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: 0,
                  bottom: quarterHeight * 3,
                  left: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      'assets/roma.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
                Positioned(
                  top: 64,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: ListView(
                    children: [
                      InfoLugar(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Details"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.grey[200],
                            ),
                          ),
                          Text("Walkthrough Flight Detail"),
                        ],
                      ),
                      Container(
                        height: 150,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            List<String> lugares = [
                              "Coliseo Romano",
                              "Fontana di Trevi",
                              "Plaza Venecia",
                              "Vaticano",
                              "Viñedo",
                            ];
                            List<String> fotos = [
                              'assets/coliseo.jpeg',
                              'assets/fontanaDiTrevi.jpeg',
                              'assets/plazaVenecia.jpeg',
                              'assets/vaticano.jpeg',
                              'assets/viñedo.jpeg',
                            ];
                            return ItemActividad(
                              index: index + 1,
                              dia: "${index + 1}",
                              lugar: lugares[index],
                              foto: fotos[index],
                            );
                          },
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Reservación en progreso"),
                            ),
                          );
                        },
                        child: Text(
                          "Start booking",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

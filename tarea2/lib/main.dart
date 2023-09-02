// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class coloredIcon extends StatefulWidget {
  final IconData icon;
  final String iconName;

  coloredIcon({required this.icon, required this.iconName});

  @override
  _ColorToggleIconState createState() => _ColorToggleIconState();
}

class _ColorToggleIconState extends State<coloredIcon> {
  bool isPressed = false;

  void togglePressed() {
    setState(() {
      isPressed = !isPressed;
    });

    final txt = isPressed ? '${widget.iconName}' : '';
    final snackBar = SnackBar(content: Text(txt));
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    final iconColor = isPressed ? Colors.indigo : Colors.black;

    return GestureDetector(
      onTap: togglePressed,
      child: Icon(
        widget.icon,
        size: 40,
        color: iconColor,
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 30, 136, 229)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ITESO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.network(
                    'https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg'),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'El ITESO, Univerisdad Jesuita de Guadalajara',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "San Pedro Tlaquepaque, Jal.",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            iconSize: 24,
                            icon: const Icon(
                              Icons.thumb_down_alt_sharp,
                              color: Colors.indigo,
                            ),
                            onPressed: _decrementCounter,
                          ),
                          Text('$_counter'),
                          IconButton(
                            iconSize: 24,
                            icon: const Icon(
                              Icons.thumb_up_sharp,
                              color: Colors.indigo,
                            ),
                            onPressed: _incrementCounter,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 0),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: [
                          coloredIcon(
                              icon: Icons.restaurant,
                              iconName:
                                  'Puedes encontrar comida en sus cafeterías'),
                          SizedBox(width: 50),
                          coloredIcon(
                              icon: Icons.info_outline_rounded,
                              iconName: 'Puedes pedir información en rectoría'),
                          SizedBox(width: 50),
                          coloredIcon(
                              icon: Icons.directions,
                              iconName:
                                  'Se encuentra ubicado en Periférico Sur 8585'),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 0),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      child: Text(
                          "El ITESO, Universidad Jesuita de Guadalajara es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita que integra a ocho universidades en México.")),
                )
              ],
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

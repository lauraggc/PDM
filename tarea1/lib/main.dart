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

    final txt = isPressed ? 'Botón presionado: ${widget.iconName}' : '';
    final snackBar = SnackBar(content: Text(txt));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    final iconColor = isPressed ? Colors.indigo : Colors.black;

    return GestureDetector(
      onTap: togglePressed,
      child: Icon(
        widget.icon,
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
      home: const MyHomePage(title: 'Mc Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              constraints: BoxConstraints(
                minHeight: 160.0,
                maxHeight:
                    Theme.of(context).textTheme.headlineMedium!.fontSize! *
                            1.1 +
                        160.0,
              ),
              margin: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(children: <Widget>[
                    Container(
                      height: 80.0,
                      alignment: Alignment.topCenter,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.person,
                              color: Colors.black,
                              size: 50.0,
                            ),
                            SizedBox(width: 5),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Flutter McFlutter',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                            color: Colors.black,
                                            fontSize: 22.0),
                                  ),
                                  Text(
                                    'Experienced App Developer',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                            color: Colors.black,
                                            fontSize: 14.0),
                                  ),
                                ])
                          ]),
                    ),
                    SizedBox(height: 0),
                    Container(
                        height: 50,
                        alignment: Alignment.center,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '123 Main Street',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                '(415) 555-0198',
                                style: TextStyle(color: Colors.black),
                              ),
                            ])),
                    SizedBox(height: 0),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          coloredIcon(
                              icon: Icons.star_rounded, iconName: 'Favorito'),
                          coloredIcon(icon: Icons.timer, iconName: 'Reloj'),
                          coloredIcon(
                              icon: Icons.phone_android, iconName: 'Celular'),
                          coloredIcon(
                              icon: Icons.phone_enabled, iconName: 'Llamada')
                        ],
                      ),
                    ),
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}

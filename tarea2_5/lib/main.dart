// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tip Time!'),
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
  var cost = TextEditingController();
  var tipPercentage;
  var tip;
  bool round = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          actions: [
            IconButton(
              tooltip: "Borra todo",
              onPressed: () {
                cost.clear();
                tip = 0;
                round = false;
                setState(() {});
              },
              icon: const Icon(Icons.delete),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 12),
          child: ListView(
            children: [
              TextField(
                controller: cost,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    icon: Icon(Icons.attach_money_outlined),
                    labelText: "Cost of service",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Icon(Icons.percent_outlined),
                  Text("   How was the service?",
                      style: TextStyle(fontSize: 18))
                ],
              ),
              RadioListTile(
                title: Text("Amazing 20%"),
                value: "20",
                groupValue: tipPercentage.toString(),
                onChanged: (value) {
                  setState(() {
                    tipPercentage = int.parse(value!);
                  });
                },
              ),
              RadioListTile(
                title: Text("Good 18%"),
                value: "18",
                groupValue: tipPercentage.toString(),
                onChanged: (value) {
                  setState(() {
                    tipPercentage = int.parse(value!);
                  });
                },
              ),
              RadioListTile(
                title: Text("Okay 15%"),
                value: "15",
                groupValue: tipPercentage.toString(),
                onChanged: (value) {
                  setState(() {
                    tipPercentage = int.parse(value!);
                  });
                },
              ),
              Row(
                children: [
                  Icon(Icons.room_service_outlined),
                  Text("   Round up tip", style: TextStyle(fontSize: 18)),
                  SizedBox(width: 175),
                  Switch(
                    value: round,
                    onChanged: (value) {
                      setState(() {
                        round = value; // Actualiza la variable booleana
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              MaterialButton(
                  color: Colors.lightGreen,
                  child: const Text("Calcular"),
                  onPressed: () {
                    if (double.tryParse(cost.text) != null) {
                      double costValue = double.parse(cost.text);
                      tip = costValue * (tipPercentage / 100);
                    } else {
                      tip = 0;
                    }
                    if (round == true) {
                      tip = double.parse(tip.toStringAsFixed(0));
                    } else {
                      tip = double.parse(tip.toStringAsFixed(2));
                    }
                    setState(() {});
                  }),
              Text(
                'Tip: \$${tip}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                ),
              )
            ],
          ),
        ));
  }
}

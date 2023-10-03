import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:contador2/Providers/counter_provider.dart';

class Primo extends StatefulWidget {
  const Primo({Key? key}) : super(key: key);

  @override
  State<Primo> createState() => _PrimoState();
}

class _PrimoState extends State<Primo> {
  @override
  Widget build(BuildContext context) {
    bool isPrime = context.read<CounterProvider>().primo();
    return Center(
      child: Text(
        'Primo',
        style: TextStyle(
          fontSize: 50.0,
          color: isPrime ? Colors.green : Colors.blue,
        ),
      ),
    );
  }
}

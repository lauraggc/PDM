import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:contador2/Providers/counter_provider.dart';

class Multiplica extends StatefulWidget {
  const Multiplica({super.key});

  @override
  State<Multiplica> createState() => _MultiplicaState();
}

class _MultiplicaState extends State<Multiplica> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            context.watch<CounterProvider>().counter.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().multiDos();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Multiplicado por 2'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: const Text('x2'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().multiTres();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Multiplicado por 3'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: const Text('x3'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().multiCinco();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Multiplicado por 5'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: const Text('x5'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

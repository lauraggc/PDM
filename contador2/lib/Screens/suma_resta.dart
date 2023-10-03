import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:contador2/Providers/counter_provider.dart';

class SumaResta extends StatefulWidget {
  const SumaResta({super.key});

  @override
  State<SumaResta> createState() => _SumaRestaState();
}

class _SumaRestaState extends State<SumaResta> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            context.watch<CounterProvider>().counter.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<CounterProvider>().increment();
                  },
                  icon: Icon(Icons.add),
                  label: Text('Suma'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<CounterProvider>().decrement();
                  },
                  icon: Icon(Icons.remove),
                  label: Text('Resta'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<CounterProvider>().restart();
                  },
                  icon: Icon(Icons.refresh),
                  label: Text('Reinicio'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

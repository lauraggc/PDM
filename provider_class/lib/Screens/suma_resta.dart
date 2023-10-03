import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/Providers/counter_provider.dart';

class SumaResta extends StatefulWidget {
  const SumaResta({super.key});

  @override
  State<SumaResta> createState() => _SumaRestaState();
}

class _SumaRestaState extends State<SumaResta> {
  @override
  
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          Text(
            context.watch<CounterProvider>().counter.toString(), 
            style: const TextStyle(fontSize: 40),),
          ElevatedButton(
            onPressed: (){
              context.read<CounterProvider>().increment();
            }, 
            child: const Text('+'))
        ],
      ),
    );
  }
}
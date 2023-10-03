import 'package:flutter/material.dart';

class Primo extends StatefulWidget {
  const Primo({super.key});

  @override
  State<Primo> createState() => _PrimoState();
}

class _PrimoState extends State<Primo> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text ('Primo'),
    );
  }
}
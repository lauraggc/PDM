import 'package:flutter/material.dart';
import 'package:tarea3_5p/home_page.dart';

class Recipe extends StatefulWidget {
  const Recipe({super.key, required this.receta});

  final RecetaElementos receta;

  @override
  State<Recipe> createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

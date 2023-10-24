import 'package:flutter/material.dart';
import 'package:desafio_4/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:desafio_4/theme_bloc.dart';

class Recipe extends StatefulWidget {
  const Recipe({Key? key, required this.receta}) : super(key: key);

  final RecetaElementos receta;

  @override
  State<Recipe> createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  bool isFavorita = false;

  void toggleFavorita() {
    setState(() {
      isFavorita = !isFavorita;
    });

    final snackBarMessage = isFavorita
        ? 'Agregaste el estado a tus favoritos'
        : 'Quitaste el estado de tus favoritos';

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(snackBarMessage),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
      builder: (context, theme) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.receta.nombre),
            backgroundColor: theme.primaryColor,
            actions: [
              IconButton(
                icon: Icon(
                  isFavorita ? Icons.star : Icons.star_border,
                  color: Colors.white,
                ),
                onPressed: toggleFavorita,
              ),
            ],
          ),
          backgroundColor: theme.backgroundColor,
          body: Center(
            child: ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset(
                    widget.receta.imagen,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    'Lugares turísticos',
                    style: TextStyle(
                      color: theme.hintColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: widget.receta.lugares.map((ingrediente) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          ingrediente,
                          style:
                              theme.textTheme.bodyText1?.copyWith(fontSize: 14),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

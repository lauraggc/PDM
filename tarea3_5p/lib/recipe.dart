import 'package:flutter/material.dart';
import 'package:tarea3_5p/home_page.dart';

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
        ? 'Agregaste la receta a tus favoritos'
        : 'Quitaste la receta de tus favoritos';

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(snackBarMessage),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.receta.nombre),
        backgroundColor: Colors.black,
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
      backgroundColor: Colors.black87,
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
                'Ingredientes',
                style: TextStyle(
                  color: Colors.purpleAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.receta.ingredientes.map((ingrediente) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      ingrediente,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                'Pasos',
                style: TextStyle(
                  color: Colors.purpleAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.receta.pasos.map((paso) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      paso,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

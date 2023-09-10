import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget {
  final int index;
  final String dia;
  final String lugar;
  final String foto;

  ItemActividad({
    required this.index,
    required this.dia,
    required this.lugar,
    required this.foto,
  });

  @override
  Widget build(BuildContext context) {
    int index = 1;
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image.asset(
              foto,
              fit: BoxFit.cover,
            ),
          ),
          Text("Day ${dia}", style: TextStyle(fontSize: 11)),
          Text(lugar)
        ],
      ),
    );
  }
}

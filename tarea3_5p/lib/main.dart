import 'package:flutter/material.dart';
import 'package:tarea3_5p/home_page.dart';

void main() {
  List<RecetaElementos> desayunos = [
    RecetaElementos(
        "Pan francés", "assets/pan.jpg", "10 min", "Simple", "Accesible", [
      "2 rebanadas de pan",
      "100 ml de leche",
      "1 huevo",
      "Canela",
      "Mantequilla",
      "Fruta al gusto"
    ], [
      "1. Mezclar la leche, el huevo y la canela",
      "2. Huntar mantequilla en el sarten",
      "3. Hundir los panes en la mezcla",
      "4. Poner los panes en el sarten de cada lado, hasta que se doren",
      "5. Servirlos con fruta al gusto"
    ]),
    RecetaElementos(
      "Hotcakes de Avena",
      "assets/hotcakes.jpg",
      "15 min",
      "Fácil",
      "Accesible",
      [
        "1 taza de avena",
        "1/2 taza de leche",
        "1 huevo",
        "2 cucharadas de azúcar",
        "1 cucharadita de polvo de hornear",
        "Una pizca de sal",
      ],
      [
        "1. Mezclar la avena y la leche en un tazón y dejar reposar por 10 minutos.",
        "2. Agregar el huevo, el azúcar, el polvo de hornear y la sal a la mezcla de avena y leche. Mezclar bien.",
        "3. Calentar un sartén antiadherente a fuego medio y engrasarlo ligeramente con aceite o mantequilla.",
        "4. Verter un poco de la mezcla en el sartén caliente para formar los hotcakes.",
        "5. Cocinar hasta que aparezcan burbujas en la superficie, luego voltear y cocinar el otro lado hasta que estén dorados.",
        "6. Servir los hotcakes con tu topping favorito, como miel, frutas o yogur.",
      ],
    ),
    RecetaElementos(
      "Chilaquiles",
      "assets/chilaquiles.jpg",
      "30 min",
      "Moderado",
      "Accesible",
      [
        "Tortillas de maíz (preferiblemente un poco duras)",
        "Salsa roja o verde al gusto",
        "Queso fresco o cotija desmenuzado",
        "Crema agria o crema mexicana",
        "Cebolla morada finamente picada",
        "Cilantro fresco picado",
        "Aceite para freír",
        "Sal al gusto",
      ],
      [
        "1. Cortar las tortillas en triángulos o tiras.",
        "2. Calentar suficiente aceite en una sartén grande y freír las tortillas hasta que estén doradas y crujientes. Luego, retirar el exceso de aceite con papel de cocina.",
        "3. En la misma sartén, agregar la salsa roja o verde y calentarla.",
        "4. Regresar las tortillas fritas a la sartén con la salsa y mezclar hasta que estén bien cubiertas. Cocinar por unos minutos hasta que las tortillas estén suaves pero no empapadas.",
        "5. Servir los chilaquiles en platos individuales.",
        "6. Decorar con queso fresco, crema agria, cebolla morada y cilantro fresco al gusto."
      ],
    ),
    RecetaElementos(
      "Avena",
      "assets/avena.jpg",
      "10 min",
      "Fácil",
      "Accesible",
      [
        "1 taza de avena",
        "2 tazas de leche (o leche vegetal)",
        "1 cucharada de miel (opcional)",
        "Frutas frescas para decorar (plátano, fresas, etc.)",
        "Nueces o almendras picadas (opcional)",
      ],
      [
        "1. En una cacerola, calentar la leche a fuego medio.",
        "2. Agregar la avena y cocinar a fuego lento, revolviendo ocasionalmente, durante 5-7 minutos o hasta que la avena esté cocida y la mezcla tenga una consistencia cremosa.",
        "3. Si deseas, añadir la miel para endulzar y mezclar bien.",
        "4. Servir la avena en tazones individuales y decorar con frutas frescas y nueces o almendras picadas, según tu preferencia."
      ],
    ),
    RecetaElementos(
      "Toast de Aguacate",
      "assets/toast.jpg",
      "15 min",
      "Fácil",
      "Accesible",
      [
        "Rebanadas de pan integral",
        "Aguacate maduro",
        "Sal y pimienta al gusto",
        "Tomates cherry cortados en rodajas",
        "Hojuelas de chile rojo (opcional)",
        "Huevo pochado (opcional)",
      ],
      [
        "1. Tostar las rebanadas de pan en una tostadora o en una sartén hasta que estén doradas y crujientes.",
        "2. Mientras tanto, cortar el aguacate por la mitad, quitar el hueso y sacar la pulpa. Machacar la pulpa de aguacate con un tenedor y sazonar con sal y pimienta al gusto.",
        "3. Untar la mezcla de aguacate sobre las rebanadas de pan tostado.",
        "4. Decorar con rodajas de tomate cherry y, si lo deseas, hojuelas de chile rojo para un toque picante.",
        "5. Opcionalmente, puedes agregar un huevo pochado sobre el aguacate para darle un toque extra de sabor y proteína."
      ],
    )
  ];

  runApp(
    MaterialApp(
      title: 'Desayunos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 38, 30, 30),
      ),
      home: MyApp(
        desayunos: desayunos,
      ),
    ),
  );
}

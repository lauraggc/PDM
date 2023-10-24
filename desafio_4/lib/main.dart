import 'package:desafio_4/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:desafio_4/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';

void main() {
  List<RecetaElementos> desayunos = [
    RecetaElementos(
        "Ciudad de México",
        "assets/cdmx.jpg",
        "Centro",
        "La Ciudad de México, conocida como CDMX, es la capital de México y una de las ciudades más vibrantes y culturalmente ricas del mundo. Esta metrópolis, situada en el corazón del país, ofrece una mezcla única de historia, arte, gastronomía y diversidad. CDMX es el hogar de innumerables museos, monumentos históricos y una vida nocturna emocionante.",
        [
          "Zócalo y el Palacio Nacional",
          "La Catedral Metropolitana",
          "Museo Frida Kahlo (Casa Azul)",
          "Museo Nacional de Antropología",
          "El Bosque de Chapultepec",
          "Xochimilco y sus trajineras",
          "Teotihuacán y sus pirámides",
          "Mercado de La Ciudadela",
          "Barrio de Coyoacán",
          "La Casa de los Azulejos",
          "Plaza Garibaldi y el mariachi",
        ]),
    RecetaElementos(
      "Jalisco",
      "assets/jalisco.jpg",
      "Centro",
      "Jalisco es un estado ubicado en el oeste de México, conocido por su rica tradición cultural, música mariachi y tequila. La capital de Jalisco es Guadalajara, una ciudad moderna que al mismo tiempo conserva su herencia colonial. El estado ofrece una mezcla de paisajes, desde las montañas de la Sierra Madre Occidental hasta las tierras bajas y costas del Pacífico. Jalisco es famoso por su gastronomía, festivales y música tradicional mexicana.",
      [
        "Guadalajara: la capital del estado, con su catedral, el Hospicio Cabañas y el Palacio de Gobierno.",
        "Tequila: el lugar de origen del tequila, con numerosas destilerías que ofrecen recorridos y degustaciones.",
        "Tlaquepaque: un encantador pueblo con calles empedradas y tiendas de artesanías.",
        "Lago de Chapala: el lago más grande de México, ideal para relajarse y disfrutar de la naturaleza.",
        "Los Guachimontones: antiguas pirámides circulares que son únicas en la arquitectura prehispánica.",
        "Mazamitla: un pueblo mágico en la sierra con un clima fresco y actividades al aire libre.",
        "Puerto Vallarta: un popular destino de playa en la costa del Pacífico con playas hermosas y vida nocturna animada.",
        "Tapalpa: otro pueblo mágico rodeado de bosques y montañas, perfecto para el turismo rural.",
        "Museo Regional de Guadalajara: para aprender más sobre la historia y cultura de la región.",
        "Haciendas tequileras: visita una hacienda para conocer el proceso de elaboración del tequila y degustar esta bebida icónica.",
      ],
    ),
    RecetaElementos(
      "Quintana Roo",
      "assets/quintana_roo.jpg",
      "Sur",
      "Quintana Roo es un estado ubicado en la península de Yucatán, en el sureste de México. Es conocido por sus hermosas playas de arena blanca, aguas cristalinas del Mar Caribe, y una gran diversidad de ecosistemas, incluyendo selvas tropicales, arrecifes de coral y cenotes. La Riviera Maya, con su rica herencia Maya y su oferta turística de clase mundial, es una de las principales atracciones de Quintana Roo.",
      [
        "Cancún: famoso por sus playas, vida nocturna y resorts de lujo.",
        "Playa del Carmen: una ciudad costera con tiendas, restaurantes y la famosa Quinta Avenida.",
        "Tulum: con su impresionante zona arqueológica junto al mar y playas de ensueño.",
        "Cozumel: una isla de buceo con arrecifes de coral y aguas cristalinas.",
        "Xcaret: un parque eco-arqueológico que combina naturaleza, cultura y diversión.",
        "Xel-Há: un parque acuático natural con actividades de snorkel y nado con delfines.",
        "Cenotes: explora los cenotes de Quintana Roo para una experiencia única de espeleología y natación en cuevas.",
        "Reserva de la Biosfera Sian Ka'an: un área de conservación con manglares y vida silvestre.",
        "Isla Holbox: un destino tranquilo para la observación de aves y nado con el tiburón ballena.",
        "Bacalar: la Laguna de los Siete Colores, con aguas de distintos tonos de azul y verde.",
      ],
    ),
    RecetaElementos(
      "Oaxaca",
      "assets/oaxaca.jpg",
      "Sur",
      "Oaxaca es un estado ubicado en el sur de México, conocido por su rica herencia cultural, arte popular, gastronomía única y paisajes variados. La ciudad de Oaxaca de Juárez, la capital del estado, es famosa por su arquitectura colonial bien conservada y su vibrante vida cultural. Oaxaca es hogar de diversas comunidades indígenas que han preservado sus tradiciones a lo largo de los siglos.",
      [
        "Ciudad de Oaxaca: con su Zócalo, la Catedral de Santo Domingo y el Templo de Santo Domingo de Guzmán.",
        "Monte Albán: una antigua ciudad arqueológica zapoteca en lo alto de una colina con impresionantes vistas.",
        "Hierve el Agua: formaciones geológicas únicas que parecen cascadas petrificadas.",
        "Mitla: otro importante sitio arqueológico con intrincados relieves en sus edificios.",
        "Zaachila: famoso por su mercado de los jueves y su iglesia colonial.",
        "Hierve el Agua: formaciones rocosas y piscinas naturales con aguas minerales.",
        "Museo de las Culturas de Oaxaca: para aprender más sobre la rica historia y cultura del estado.",
        "Tule: visita el Árbol del Tule, uno de los árboles más antiguos y grandes del mundo.",
        "Playa Zipolite: una playa relajada en la costa del Pacífico, conocida como la Playa de los Muertos.",
        "Arte popular: explora los mercados de artesanías de Oaxaca y adquiere textiles, cerámica y alebrijes coloridos.",
      ],
    ),
    RecetaElementos(
      "Chihuahua",
      "assets/chihuahua.jpg",
      "Norte",
      "Chihuahua es el estado más grande de México y se encuentra en el norte del país. Este estado es conocido por su impresionante belleza natural, con desiertos, montañas, cañones y una rica herencia cultural. Chihuahua es un lugar donde la historia se mezcla con la aventura al aire libre, y es hogar de algunas de las vistas más espectaculares de México.",
      [
        "Barrancas del Cobre: un sistema de cañones que es más grande y más profundo que el Gran Cañón en los Estados Unidos.",
        "Creel: un pintoresco pueblo en las Barrancas del Cobre, punto de partida para explorar la región.",
        "Parque Nacional Cumbres de Majalca: un hermoso parque con oportunidades para hacer senderismo y acampar.",
        "Cascadas de Basaseachi: una de las cascadas más altas de México, rodeada de bosques impresionantes.",
        "Chihuahua: la capital del estado con su catedral y museos como el Museo Semilla.",
        "Divisadero: un mirador en las Barrancas del Cobre con vistas panorámicas espectaculares.",
        "Misión de San Ignacio: una antigua misión jesuita en el pueblo de Janos.",
        "Área Protegida de Cuatrociénegas: un oasis en medio del desierto con aguas termales y biodiversidad única.",
        "Cueva de las Monas: una cueva con impresionantes formaciones rocosas y pinturas rupestres.",
        "Museo de Pancho Villa: para aprender más sobre la Revolución Mexicana y el famoso líder revolucionario.",
      ],
    )
  ];

  final themeBloc = ThemeBloc();

  runApp(
    BlocProvider(
      create: (context) => themeBloc,
      child: MyApp(desayunos: desayunos),
    ),
  );
}

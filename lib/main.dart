import 'package:flutter/material.dart';

import 'telas/game.dart';
import 'telas/home.dart';
import 'telas/resultado.dart';
import 'telas/impacto.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home': (context) => HomePage(),
      'game': (context) => GamePage(),
      'resultado': (context) => ResultadoPage(),
      'impacto' : (context) => ImpactoPage()
    },
    theme: ThemeData(primaryColor: Colors.red),
  ));
}

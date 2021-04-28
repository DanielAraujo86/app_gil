import 'package:flutter/material.dart';

import 'telas/game.dart';
import 'telas/home.dart';
import 'telas/resultado.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    routes: {
      'home': (context) => HomePage(),
      'game': (context) => GamePage(),
      'resultado': (context) => ResultadoPage()
    },
    theme: ThemeData(primaryColor: Colors.red),
  ));
}

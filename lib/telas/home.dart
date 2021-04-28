import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset("assets/imagens/COLETA SELETIVA.png"),
            Text(
                'Olá!!! \nBem vindo a um caminho seletivo para um mundo melhor'),
            TextFormField(),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('game');
                },
                child: Text('Proximo'))
          ]),
        ),
      ),
    );
  }
}

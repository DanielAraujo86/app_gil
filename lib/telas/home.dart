import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String nome = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(context) {
    String nome = "";
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset("assets/imagens/Coleta_seletiva_2.jpeg"),
            Text(
              'Olá!!!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Text(
              'Bem vindo a um caminho seletivo para um mundo melhor!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            TextFormField(
              onChanged: (text) {
                HomePage.nome = text;
              },
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Digite aqui seu nome',
              ),
              onSaved: (String value) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) =>
                      const AlertDialog(title: Text('Material Alert!')),
                );
              },
              validator: (String value) {
                return (value != null && value.contains('@'))
                    ? 'Digite seu nome para continuar.'
                    : null;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('game', arguments: nome);
                },
                child: Text('Proximo'))
          ]),
        ),
      ),
    );
  }
}

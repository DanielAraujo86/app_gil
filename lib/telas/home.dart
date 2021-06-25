import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String nomeUsuario = "";
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
               this.nomeUsuario = text;
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
                  Navigator.of(context).pushNamed('game');
                },
                child: Text('Proximo'))
          ]),
        ),
      ),
    );
  }
}

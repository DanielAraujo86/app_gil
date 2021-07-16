import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String nome = "";
  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  _body(context) {
    String nome = "";
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Container(
              height: 400,
              width: 400,
              child: Image.asset("assets/imagens/Coleta_seletiva_2.jpeg"),
              
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Olá!!!\n"
                  "Bem vindo a um caminho seletivo para um mundo melhor!",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
            ),
            Container(
                child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: TextFormField(
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
                    ))),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('game', arguments: nome);
                },
                child: Text('Próximo'))
          ]),
        ),
      ),
    );
  }
}

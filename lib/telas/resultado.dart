import 'package:app_1/telas/home.dart';
import 'package:flutter/material.dart';

class ResultadoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.green[900],
                title: Text(
                  "Parabéns, ${HomePage.nome}!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                      color: Colors.white),
                )),
            body: Center(
                child: Container(
                    constraints: BoxConstraints.expand(),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/imagens/tela3.jpeg"),
                            fit: BoxFit.fill)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(
                            "A coleguinha Maria conseguiu melhorar seu planeta!!!\n \n",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('impacto');
                          },
                          child: Container(
                              height: 60,
                              width: 250,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text('Confira os benefícios da reciclagem',
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.center),
                              )),
                        )
                      ],
                    )))));
  }
}

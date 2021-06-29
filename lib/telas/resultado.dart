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
                  "Parabéns, ${HomePage.nome}!!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                )),
            body: Center(
                child: Container(
                    constraints: BoxConstraints.expand(),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/imagens/resultado2.jpeg"),
                            fit: BoxFit.fill)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ListTile(
                              title: Text(
                                "A amiguinha Maria conseguiu melhorar seu planeta!!!.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                        ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('home');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Proximo', style: TextStyle(fontSize: 22),),
                        )),
                      ],
                    )))));
  }
}

import 'package:flutter/material.dart';

class ImpactoPage extends StatefulWidget {
  //const ImpactoPage({ Key? key }) : super(key: key);

  @override
  _ImpactoPageState createState() => _ImpactoPageState();
}

class _ImpactoPageState extends State<ImpactoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("assets/imagens/fundo_tela_verde.jpg"),
                        fit: BoxFit.cover)),
                child: SafeArea(
                  child: Container(
                    height: double.infinity,
                    child: Stack(children: [
                      Column(
                        children: [
                          Container(
                            height: 400,
                            width: 500,
                            child: Padding(
                              padding: EdgeInsets.all(64.0),
                              child: Text(
                                "Plástico: Evitou que o plástico danificasse o meio ambiente por 400 anos, que é o tempo médio de decomposição!\n \n"
                                "Papel: Evitou o corte de 20 a 30 árvores adultas em cada reciclagem de 1 tonelada de papel!\n \n"
                                "Vidro: Evitou que chegue nos rios, no solo, matas, nos aterros sanitários, uma vez que pode levar 4 mil anos para se decompor!\n \n"
                                "Metal: Evitou a contaminação do ar, das águas e plantações, uma vez que leva mais de 100 anos para se decompor!\n \n",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("home");
                            },
                            child: Text("Jogar Novamente"),
                          ),
                        ],
                      )
                    ]),
                  ),
                ))));
  }
}

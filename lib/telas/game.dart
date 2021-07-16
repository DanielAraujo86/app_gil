import 'dart:math';

import 'package:app_1/telas/home.dart';
import 'package:flutter/material.dart';

class Lixo {
  String imagem;
  int tipo;
  Lixo(this.imagem, this.tipo);
}

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int acertos = 0;

  dynamic lixos = [
    Lixo('assets/lixos/metal/Metal1.png', 0),
    Lixo('assets/lixos/metal/Metal2.png', 0),
    Lixo('assets/lixos/metal/Metal3.png', 0),
    Lixo('assets/lixos/plastico/Plastico1.png', 1),
    Lixo('assets/lixos/plastico/Plastico2.png', 1),
    Lixo('assets/lixos/plastico/Plastico3.png', 1),
    Lixo('assets/lixos/vidro/Vidro1.png', 2),
    Lixo('assets/lixos/vidro/Vidro2.png', 2),
    Lixo('assets/lixos/vidro/Vidro3.png', 2),
    Lixo('assets/lixos/papel/Papel1.png', 3),
    Lixo('assets/lixos/papel/Papel2.png', 3),
    Lixo('assets/lixos/papel/Papel3.jpg', 3),
  ];
  Lixo atual;
  Random random = Random();
  @override
  void initState() {
    super.initState();
    atual = lixos[random.nextInt(lixos.length)];
  }

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  _body(context) {
    String nome = HomePage.nome;
    return Scaffold(
      body: Center(
          child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/imagens/fundo_tela_verde.jpg"),
                      fit: BoxFit.cover)),
              child: SafeArea(
                child: Container(
                  height: double.infinity,
                  child: Stack(
                    children: [
                      //Container(height: ,),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ListTile(
                              title: Text(
                                "$nome,",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Ajude a amiguinha Maria colocar resíduo no local correto!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                            ListTile(
                              title: Text("Acertos: $acertos\n",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 25,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: Row(
                                children: [
                                  Image.asset("assets/imagens/MARIALIXO.png"),
                                  Draggable(
                                    data: atual.tipo,
                                    dragAnchor: DragAnchor.child,
                                    feedback: Container(
                                        child: Image.asset(atual.imagem),
                                        width: 80,
                                        height: 80),
                                    child: Container(
                                        child: Image.asset(atual.imagem),
                                        width: 80,
                                        height: 80),
                                  ),
                                ],
                              ),
                            ),
                            //Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                DragTarget(
                                  builder:
                                      (context, candidateItems, rejectedItems) {
                                    return Container(
                                        child: Image.asset(
                                            'assets/imagens/LixeiraMetall.png'),
                                        width: 80,
                                        height: 80);
                                  },
                                  onAccept: (item) {
                                    if (item == 0) {
                                      setState(() {
                                        acertos++;
                                        atual =
                                            lixos[random.nextInt(lixos.length)];
                                      });
                                      if (acertos > 4) {
                                        Navigator.of(context).pushNamed(
                                            'resultado',
                                            arguments: nome);
                                      }
                                    }
                                  },
                                ),
                                DragTarget(
                                  builder:
                                      (context, candidateItems, rejectedItems) {
                                    return Container(
                                        child: Image.asset(
                                            'assets/imagens/LixeiraPlasticoo.png'),
                                        width: 80,
                                        height: 80);
                                  },
                                  onAccept: (item) {
                                    if (item == 1) {
                                      setState(() {
                                        acertos++;
                                        atual =
                                            lixos[random.nextInt(lixos.length)];
                                      });
                                      if (acertos > 4) {
                                        Navigator.of(context)
                                            .pushNamed('resultado');
                                      }
                                    }
                                  },
                                ),
                                DragTarget(
                                  builder:
                                      (context, candidateItems, rejectedItems) {
                                    return Container(
                                        child: Image.asset(
                                            'assets/imagens/LixeiraVidroo.png'),
                                        width: 80,
                                        height: 80);
                                  },
                                  onAccept: (item) {
                                    if (item == 2) {
                                      setState(() {
                                        acertos++;
                                        atual =
                                            lixos[random.nextInt(lixos.length)];
                                      });
                                      if (acertos > 4) {
                                        Navigator.of(context)
                                            .pushNamed('resultado');
                                      }
                                    }
                                  },
                                ),
                                DragTarget(
                                  builder:
                                      (context, candidateItems, rejectedItems) {
                                    return Container(
                                        child: Image.asset(
                                            'assets/imagens/LixeiraPapel.png'),
                                        width: 80,
                                        height: 80);
                                  },
                                  onAccept: (item) {
                                    if (item == 3) {
                                      setState(() {
                                        acertos++;
                                        atual =
                                            lixos[random.nextInt(lixos.length)];
                                      });
                                      if (acertos > 4) {
                                        Navigator.of(context)
                                            .pushNamed('Resultado');
                                      }
                                    }
                                  },
                                )
                              ],
                            ),
                          ]),
                    ],
                  ),
                ),
              ))),
    );
  }
}

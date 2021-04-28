import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Stack(
            children: [
              //Container(height: ,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text("Ajude Maria colocar resíduo no local correto"),
                Draggable(
                  data:"lata",
                  dragAnchor: DragAnchor.pointer,
                  feedback: Container(color: Colors.red, width: 40, height: 40),
                  child: Container(color: Colors.blue, width: 40, height: 40),
                ),
                //Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DragTarget(
                      builder: (context, candidateItems, rejectedItems) {
                        return Container(
                            width: 40, height: 40, color: Colors.blue);
                      },
                      onAccept: (item) {
                        print(item);
                      },
                    ),
                    DragTarget(
                      builder: (context, candidateItems, rejectedItems) {
                        return Container(
                            width: 40, height: 40, color: Colors.red);
                      },
                      onAccept: (item) {
                        print(item);
                      },
                    ),
                    DragTarget(
                      builder: (context, candidateItems, rejectedItems) {
                        return Container(
                            width: 40, height: 40, color: Colors.yellow);
                      },
                      onAccept: (item) {
                        print(item);
                      },
                    ),
                    DragTarget(
                      builder: (context, candidateItems, rejectedItems) {
                        return Container(
                            width: 40, height: 40, color: Colors.green);
                      },
                      onAccept: (item) {
                        print(item);
                      },
                    )
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('resultado');
                    },
                    child: Text('Proximo'))
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ResultadoPage extends StatelessWidget {
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
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('home');
                },
                child: Text('Proximo'))
          ]),
        ),
      ),
    );
  }
}

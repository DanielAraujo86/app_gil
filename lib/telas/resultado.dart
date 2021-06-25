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
            appBar: AppBar(title: Text('Coleta Seletiva')),
            body: Center(
                child: Container(
                    constraints: BoxConstraints.expand(),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/imagens/Coleta_seletiva_2.jpeg"),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: Row(
            children: <Widget>[
              Container(
              child: Text(
                        'Set Full Screen Background',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
            ) ,
              Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('home');
                },
                child: Text('Proximo')),
            )])))))); 
                      
                      
                     
                      
                    
    /* return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imagens/Coleta_seletiva_2.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            
          ]),
        ),
      ),
    ));
  }*/
  }
}

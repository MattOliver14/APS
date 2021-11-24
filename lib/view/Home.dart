import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            drawer: NavDrawer(),
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color(0xff1700ac),
            ),
            body: SingleChildScrollView(
                child: Column(children: <Widget>[
              Container(
                color: Colors.blue[50],
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Card(
                    color: Colors.grey[300],
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                        Image.asset('assets/parque_card.jpg',
                            height: 150,
                            width: 400,
                            fit: BoxFit.cover),
                        ListTile(
                          title: Text(
                            'Melhores parque de São Paulo\n',
                            style: TextStyle(fontSize: 20),
                          ),
                          subtitle: Text(
                            'Ar fresco e várias atividades fora do agito da cidade para curti com a familia e amigos',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ]))),
              Container(
                  color: Colors.blue[50],
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Text(
                      "   Os parques em São Paulo são belezas da natureza em meio à cidade cinza e refúgios da correria do dia a dia dos paulistanos."
                      " As áreas verdes oferecem várias atividades e servem para recarregar as energias e relaxar.\n\n"
                      "   Mesmo se você estiver só de passagem pela cidade, ou quem sabe até morar em São Paulo mas sempre fica em dúvida do que fazer no final de semana, esses lugares são opções incríveis e que precisam ser aproveitadas.\n\n"
                      "   Seja para se deliciar em parques mais afastados da cidade ou os mais próximos à área urbana, tenha a certeza que encontrará muita diversão e também um ambiente de paz, seja em um belo passeio com criança, com a família ou aproveitar a própria companhia",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ))
            ]))));
  }
}

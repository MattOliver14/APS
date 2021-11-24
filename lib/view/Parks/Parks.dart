import 'package:APS_2021_Matt/view/Parks/Agua_Branca.dart';
import 'package:APS_2021_Matt/view/Parks/Botanico.dart';
import 'package:APS_2021_Matt/view/Parks/Triano.dart';
import 'package:APS_2021_Matt/view/Parks/Vila_Lobos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../drawer.dart';
import 'Aclimacao.dart';
import 'Burle_Max.dart';
import 'Ibirapuera.dart';
import 'independencia.dart';

class Parks extends StatefulWidget {
  @override
  _ParksState createState() => _ParksState();
}

class _ParksState extends State<Parks> {
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
                "Parques de São Paulo",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color(0xff006c03),
            ),
            body: SingleChildScrollView(
                child: Column(children: <Widget>[
              Container(
                  color: Colors.blue[50],
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ibirapuera()),
                        );
                      },
                      child: Card(
                        child: ListTile(
                          leading: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: 100,
                              minHeight: 100,
                              maxWidth: 100,
                              maxHeight: 100,
                            ),
                            child: Image.asset("assets/ibirapuera.png",
                                fit: BoxFit.cover),
                          ),
                          title: Text('Parque Ibirapuera'),
                          subtitle: Text(
                              'muito frequentado por quem gosta de correr, andar de skate, patins, bicicleta (dá para alugar) e praticar outros esportes ao ar livre. '),
                        ),
                      ),
                    ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Vila_Lobos()),
                      );
                    },
                    child: Card(
                      child: ListTile(
                        leading: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 100,
                            minHeight: 100,
                            maxWidth: 100,
                            maxHeight: 100,
                          ),
                          child: Image.asset("assets/vila-lobos.jpg",
                              fit: BoxFit.cover),
                        ),
                        title: Text('Parque Vila-Lobos'),
                        subtitle: Text(
                            'Umá ótima opção para quem gosta de bicicletas, fazer caminhadas,O local também conta com uma área pet com vários brinquedos para cachorro'),
                      ),
                    ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Botanico()),
                      );
                    },
                    child:
                    Card(
                      child: ListTile(
                        leading: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 100,
                            minHeight: 100,
                            maxWidth: 100,
                            maxHeight: 100,
                          ),
                          child: Image.asset(
                              "assets/jardim-botanico-de-sao-paulo-1-21.jpg",
                              fit: BoxFit.cover),
                        ),
                        title: Text('Jardim Botânico de São Paulo'),
                        subtitle: Text(
                            'O local conta diversas espécies de plantas, gazebos floridos e outras atrações, como o Bosque das Imbuias, o Jardim dos Sentidos, o Lago dos Bugios e muito mais!  '),
                      ),
                    ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Agua_Branca()),
                      );
                    },
                    child: Card(
                      child: ListTile(
                        leading: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 100,
                            minHeight: 100,
                            maxWidth: 100,
                            maxHeight: 100,
                          ),
                          child: Image.asset(
                              "assets/Parque_da_Água_Branca.jpeg",
                              fit: BoxFit.cover),
                        ),
                        title: Text('Parque da Água Branca'),
                        subtitle: Text(
                            ' Lá, você encontra parquinhos, lagos, hípica, carrossel e pula-pula, tambem conta com espaços de convivência, esporte, dança e atividades em grupo . '),
                      ),
                    ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Burle_Max()),
                      );
                    },
                    child:
                    Card(
                      child: ListTile(
                        leading: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 100,
                            minHeight: 100,
                            maxWidth: 100,
                            maxHeight: 100,
                          ),
                          child: Image.asset("assets/Parque_Burle_Marx.jpg",
                              fit: BoxFit.cover),
                        ),
                        title: Text('Parque Burle Marx'),
                        subtitle: Text(
                            'Área conta com edifícios muito valiosos para a história e arquitetura, trilhas são uma atração à parte e fazem o passeio ficar ainda melhor. '),
                      ),
                    ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Independencia()),
                      );
                    },
                    child:
                    Card(
                      child: ListTile(
                        leading: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 100,
                            minHeight: 100,
                            maxWidth: 100,
                            maxHeight: 100,
                          ),
                          child: Image.asset("assets/PQ-independencia-sp2.jpg",
                              fit: BoxFit.cover),
                        ),
                        title: Text('Parque da Independência'),
                        subtitle: Text(
                            'O Parque da Independência fica localizado aos arredores do famoso Museu do Ipiranga.  Aqui, os visitantes podem passear pelos jardins e curtir a natureza ao redor.  '),
                      ),
                    ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Triano()),
                      );
                    },
                    child:
                    Card(
                      child: ListTile(
                        leading: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 100,
                            minHeight: 100,
                            maxWidth: 100,
                            maxHeight: 100,
                          ),
                          child: Image.asset(
                              "assets/parque-tenente-siqueira.jpg",
                              fit: BoxFit.cover),
                        ),
                        title: Text('Parque TRIANON '),
                        subtitle: Text(
                            'Com vegetação da Mata Atlântica, conta com trilhas, parquinhos e aparelhos de ginástica. O melhor de tudo é o seu fácil acesso, pois fica de frente para o MASP e próximo à estação Trianon da linha verde do metrô. '),
                      ),
                    ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Aclimacao()),
                      );
                    },
                    child:
                    Card(
                      child: ListTile(
                        leading: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 100,
                            minHeight: 100,
                            maxWidth: 100,
                            maxHeight: 100,
                          ),
                          child: Image.asset("assets/aclimacao.jpg",
                              fit: BoxFit.cover),
                        ),
                        title: Text('Parque da Aclimação'),
                        subtitle: Text(
                            'Ideal para praticar atividades físicas, como a corrida ou caminhada, ou apenas para relaxar um pouco, conta também com esculturas e um lago'),
                      ),
                    ),
                )
                  ]))
            ]))));
  }
}


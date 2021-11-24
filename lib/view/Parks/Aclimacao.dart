import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

const url = 'https://www.google.com/maps/place/Parque+Aclima%C3%A7%C3%A3o/@-23.5751563,-46.6314259,15.25z/data=!4m5!3m4!1s0x94ce597826337fe3:0xb694e44849fc52b9!8m2!3d-23.5746857!4d-46.6285513';

class Aclimacao extends StatefulWidget {
  @override
  _AclimacaoState createState() => _AclimacaoState();
}

class _AclimacaoState extends State<Aclimacao> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Parque Aclimacao",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color(0xff006c03),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: SingleChildScrollView(
                child: Column(children: <Widget>[
                  Container(
                      color: Colors.blue[50],
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                      child: Card(
                          margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
                          elevation: 15,
                          shadowColor: Color(0x9E000000),
                          color: Colors.grey[300],
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                SizedBox(height: 10,),
                                Text("Parque Aclimacao",
                                  style: TextStyle(fontSize: 24),),
                                Image.asset('assets/aclimacao.jpg',
                                    height: 180,
                                    width: 400,
                                    fit: BoxFit.cover),
                                SizedBox(height: 10,),
                                Text(
                                  "  A área de 112 mil m² do parque atrai, os visitantes que procuram por um ambiente tranquilo no centro da cidade.  \n",
                                  style: TextStyle(fontSize: 16),),
                                Text(
                                  "  Ideal para praticar atividades físicas, como a corrida ou caminhada, ou apenas para relaxar um pouco, conta também com esculturas e um lago. O lugar também é ótimo para levar as crianças, porque tem um ótimo parquinho.  \n",
                                  style: TextStyle(fontSize: 16),),
                                Text(
                                  "   Outro fato interessante é que o parque conta com uma biblioteca, chamada Raul Boop. Ou seja, se você quer aproveitar para praticar exercícios ou até mesmo fazer uma leitura em um local agradável, saiba que o Parque da Aclimação é a escolha perfeita. ",
                                  style: TextStyle(fontSize: 16),),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: <Widget>[
                                  Expanded(child:
                                  Text("Endereço:",
                                      style: TextStyle(fontSize: 18, fontWeight:  FontWeight.bold)),),
                                  Expanded( flex: 3,
                                    child:
                                    Text("Rua Muniz de Sousa, 1119 - Aclimação, São Paulo - SP, 01534-001",
                                        style: TextStyle(fontSize: 16)),)

                                ]),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: <Widget>[
                                  Expanded(child:
                                  Text("Horarios:",
                                      style: TextStyle(fontSize: 18,fontWeight:  FontWeight.bold)),),
                                  Expanded( flex: 3,
                                    child:
                                    Text("Diariamente, das 5h às 20h",
                                        style: TextStyle(fontSize: 16)),)

                                ]),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: <Widget>[
                                  Expanded(child:
                                  Text("Telefone:",
                                      style: TextStyle(fontSize: 18,fontWeight:  FontWeight.bold)),),
                                  Expanded( flex: 3,
                                    child:
                                    Text("(11) 3208-4042 ",
                                        style: TextStyle(fontSize: 16)),)

                                ]),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: <Widget>[
                                  Expanded(child:
                                  Text("Entrada:",
                                      style: TextStyle(fontSize: 18,fontWeight:  FontWeight.bold)),),
                                  Expanded( flex: 3,
                                    child:
                                    Text("Gratuita ",
                                        style: TextStyle(fontSize: 16)),)

                                ]),
                              ]))),
                  GestureDetector(
                    onTap: () {
                      const url = 'https://www.google.com/maps/place/Parque+Aclima%C3%A7%C3%A3o/@-23.5751563,-46.6314259,15.25z/data=!4m5!3m4!1s0x94ce597826337fe3:0xb694e44849fc52b9!8m2!3d-23.5746857!4d-46.6285513';
                      _launchURL();
                    },
                    child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset("assets/aclimacao.maps.jpg",
                            height: 180.0,
                            width: 550.0,
                          ),
                        )
                    ),),
                  SizedBox(
                    height: 20,
                  )

                ]))));
  }
}
_launchURL() async {
  const url = 'https://www.google.com/maps/place/Parque+Aclima%C3%A7%C3%A3o/@-23.5751563,-46.6314259,15.25z/data=!4m5!3m4!1s0x94ce597826337fe3:0xb694e44849fc52b9!8m2!3d-23.5746857!4d-46.6285513';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Pagina não encontrada $url';
  }
}

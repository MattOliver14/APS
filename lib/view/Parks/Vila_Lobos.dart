import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

const url = 'https://www.google.com/maps/place/Parque+Villa+Lobos+-+%C3%81rea+de+C%C3%A3es/@-23.546656,-46.7278203,15z/data=!4m5!3m4!1s0x94ce5721903e3605:0xd84b4117bca95a00!8m2!3d-23.5458958!4d-46.7280235';

class Vila_Lobos extends StatefulWidget {
  @override
  _Vila_LobosState createState() => _Vila_LobosState();
}

class _Vila_LobosState extends State<Vila_Lobos> {

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
                "Parque Vila Lobos",
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
                                Text("Parque Vila-Lobos",
                                  style: TextStyle(fontSize: 24),),
                                Image.asset('assets/vila-lobos.jpg',
                                    height: 180,
                                    width: 400,
                                    fit: BoxFit.cover),
                                SizedBox(height: 10,),
                                Text(
                                  "  O parque Villa-Lobos é um ótimo exemplo de renovação de espaço e arborização urbana. \n",
                                  style: TextStyle(fontSize: 16),),
                                Text(
                                  "  Com cerca de 700 mil metros quadrados, o parque tem uma ótima estrutura. São diversas quadras, local para correr, um belo orquidário e até uma biblioteca. Se você vai com crianças, lá tem parquinhos para elas se divertirem também.   \n",
                                  style: TextStyle(fontSize: 16),),
                                Text(
                                  "   É uma ótima opção para quem gosta de um passeio de bicicleta, já que as ciclovias estão por praticamente todo o parque, ou fazer uma pequena trilha, e ficar um pouco mais perto da copa das árvores. O local também tem uma área pet com vários brinquedos para cachorro, ou seja, tem diversão para todo mundo. ",
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
                                    Text("Av. Prof. Fonseca Rodrigues, 2001 - Alto de Pinheiros, São Paulo - SP, 05461-010",
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
                                    Text("Diariamente, das 5h30 às 19h ",
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
                                    Text("(11) 2683-6302",
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
                      const url = 'https://www.google.com/maps/place/Parque+Villa+Lobos+-+%C3%81rea+de+C%C3%A3es/@-23.546656,-46.7278203,15z/data=!4m5!3m4!1s0x94ce5721903e3605:0xd84b4117bca95a00!8m2!3d-23.5458958!4d-46.7280235';
                      _launchURL();
                    },
                    child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset("assets/vila-lobos.maps.jpg",
                            height: 180.0,
                            width: 600.0,
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
  const url = 'https://www.google.com/maps/place/Parque+Villa+Lobos+-+%C3%81rea+de+C%C3%A3es/@-23.546656,-46.7278203,15z/data=!4m5!3m4!1s0x94ce5721903e3605:0xd84b4117bca95a00!8m2!3d-23.5458958!4d-46.7280235';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Pagina não encontrada $url';
  }
}

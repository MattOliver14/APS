import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

const url = 'https://www.google.com/maps/place/Jardim+Bot%C3%A2nico+de+S%C3%A3o+Paulo/@-23.6402086,-46.624398,15.46z/data=!4m5!3m4!1s0x94ce5b2203b99f37:0xe02451c8d4f252bc!8m2!3d-23.6392648!4d-46.6270159';

class Botanico extends StatefulWidget {
  @override
  _BotanicoState createState() => _BotanicoState();
}

class _BotanicoState extends State<Botanico> {

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
                "Parque Jardim Botanico",
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
                                Text("Parque Jardim Botanico",
                                  style: TextStyle(fontSize: 24),),
                                Image.asset('assets/jardim-botanico-de-sao-paulo-1-21.jpg',
                                    height: 180,
                                    width: 400,
                                    fit: BoxFit.cover),
                                SizedBox(height: 10,),
                                Text(
                                  "  O Jardim Botânico está entre os parques em São Paulo menos explorados pelos paulistanos, mas não deixa de ser maravilhoso e ter seu encanto. Com seu belíssimo espaço a ser descoberto, o local é rodeado pela natureza por todos os lados. Gosta de paz? Esse é o lugar certo!  \n",
                                  style: TextStyle(fontSize: 16),),
                                Text(
                                  "  O local conta com viveiros com diversas espécies de plantas, gazebos floridos e outras atrações, como o Bosque das Imbuias, o Jardim dos Sentidos, o Lago dos Bugios e outros passeios incríveis! Quer fazer um piquenique e relaxar? Não pense duas vezes, leve uma cesta e aproveite a paisagem exuberante que tem ao redor.\n",
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
                                    Text("Av. Miguel Estéfno, 3031 - Vila Água Funda, São Paulo - SP, 04301-902",
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
                                    Text("De terça a domingo e feriados, das 9h às 17h",
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
                                    Text("(11) 5073-6300 ",
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
                                    Text("Entrada paga",
                                        style: TextStyle(fontSize: 16)),)

                                ]),
                              ]))),
                  GestureDetector(
                    onTap: () {
                      const url = 'https://www.google.com/maps/place/Jardim+Bot%C3%A2nico+de+S%C3%A3o+Paulo/@-23.6402086,-46.624398,15.46z/data=!4m5!3m4!1s0x94ce5b2203b99f37:0xe02451c8d4f252bc!8m2!3d-23.6392648!4d-46.6270159';
                      _launchURL();
                    },
                    child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset("assets/botanico.maps.jpg",
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
  const url = 'https://www.google.com/maps/place/Jardim+Bot%C3%A2nico+de+S%C3%A3o+Paulo/@-23.6402086,-46.624398,15.46z/data=!4m5!3m4!1s0x94ce5b2203b99f37:0xe02451c8d4f252bc!8m2!3d-23.6392648!4d-46.6270159';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Pagina não encontrada $url';
  }
}

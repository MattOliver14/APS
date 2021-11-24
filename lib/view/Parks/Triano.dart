import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

const url = 'https://www.google.com/maps/place/Parque+Tenente+Siqueira+Campos+-+Trianon/@-23.5637546,-46.6562772,15.5z/data=!4m5!3m4!1s0x94ce59ce5d8925ef:0xcbedce4d8d4eb4c4!8m2!3d-23.5623695!4d-46.6573961';

class Triano extends StatefulWidget {
  @override
  _TrianoState createState() => _TrianoState();
}

class _TrianoState extends State<Triano> {

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
                "Parque TRIANON",
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
                                Text("Parque TRIANON",
                                  style: TextStyle(fontSize: 24),),
                                Image.asset('assets/parque-tenente-siqueira.jpg',
                                    height: 180,
                                    width: 400,
                                    fit: BoxFit.cover),
                                SizedBox(height: 10,),
                                Text(
                                  "  De um lado do parque, você pode observar prédios enormes e a agitação paulistana. Do outro, árvores gigantescas, muita tranquilidade e paz. Não deixe de reparar nessa divisão entre 2 ambientes tão diferentes no mesmo espaço. \n",
                                  style: TextStyle(fontSize: 16),),
                                Text(
                                  "  Se você quer uma opção mais tranquila na Avenida Paulista, além de trabalho, estudo, e eventos saiba que o parque é um ótimo respiro dessa correria do dia a dia. \n",
                                  style: TextStyle(fontSize: 16),),
                                Text(
                                  "   Com vegetação da Mata Atlântica, conta com trilhas, parquinhos e aparelhos de ginástica. O melhor de tudo é o seu fácil acesso, pois fica de frente para o MASP e próximo à estação Trianon da linha verde do metrô. ",
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
                                    Text("Rua Peixoto Gomide, 949 - Cerqueira César, São Paulo - SP, 01409-001",
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
                                    Text("Diariamente, das 6h às 18h",
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
                                    Text("(11) 3289-2160 ",
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
                      const url = 'https://www.google.com/maps/place/Parque+Tenente+Siqueira+Campos+-+Trianon/@-23.5637546,-46.6562772,15.5z/data=!4m5!3m4!1s0x94ce59ce5d8925ef:0xcbedce4d8d4eb4c4!8m2!3d-23.5623695!4d-46.6573961';
                      _launchURL();
                    },
                    child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset("assets/triano.maps.jpg",
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
  const url = 'https://www.google.com/maps/place/Parque+Tenente+Siqueira+Campos+-+Trianon/@-23.5637546,-46.6562772,15.5z/data=!4m5!3m4!1s0x94ce59ce5d8925ef:0xcbedce4d8d4eb4c4!8m2!3d-23.5623695!4d-46.6573961';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Pagina não encontrada $url';
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

const url = 'https://www.google.com/maps/place/Parque+Independ%C3%AAncia/@-23.5833596,-46.6063865,14.42z/data=!4m12!1m6!3m5!1s0x94ce5b944452677b:0xd8cac2fbf200334a!2sParque+Independ%C3%AAncia!8m2!3d-23.5841629!4d-46.6098273!3m4!1s0x94ce5b944452677b:0xd8cac2fbf200334a!8m2!3d-23.5841629!4d-46.6098273';

class Independencia extends StatefulWidget {
  @override
  _IndependenciaState createState() => _IndependenciaState();
}

class _IndependenciaState extends State<Independencia> {

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
                "Parque da Independência",
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
                                Text("Parque Independência",
                                  style: TextStyle(fontSize: 24),),
                                Image.asset('assets/PQ-independencia-sp2.jpg',
                                    height: 180,
                                    width: 400,
                                    fit: BoxFit.cover),
                                SizedBox(height: 10,),
                                Text(
                                  "  O Parque da Independência fica localizado aos arredores do famoso Museu do Ipiranga.  Aqui, os visitantes podem passear pelos jardins e curtir a natureza ao redor. \n",
                                  style: TextStyle(fontSize: 16),),
                                Text(
                                  "  O parque também conta com uma longa “pista” para andar de skate, patins e bicicleta, além de ser um ótimo lugar se você pensa em fazer um piquenique. \n",
                                  style: TextStyle(fontSize: 16),),
                                Text(
                                  "   É um lugar que mantém sua beleza e vale muito a pena ser visitado, pois conta também com a um jardim francês, Casa do Grito, Monumento da Independência, que serve até de mirante, e a Cripta Imperial, que guarda os ossos de D. Pedro I e Dona Amélia. ",
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
                                    Text("Av. Nazaré, s/n - Ipiranga, São Paulo - SP, 04263-200 ",
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
                                    Text("(11) 2273-7250 ",
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
                      const url = 'https://www.google.com/maps/place/Parque+Independ%C3%AAncia/@-23.5833596,-46.6063865,14.42z/data=!4m12!1m6!3m5!1s0x94ce5b944452677b:0xd8cac2fbf200334a!2sParque+Independ%C3%AAncia!8m2!3d-23.5841629!4d-46.6098273!3m4!1s0x94ce5b944452677b:0xd8cac2fbf200334a!8m2!3d-23.5841629!4d-46.6098273';
                      _launchURL();
                    },
                    child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset("assets/idependencia.maps.jpg",
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
  const url = 'https://www.google.com/maps/place/Parque+Independ%C3%AAncia/@-23.5833596,-46.6063865,14.42z/data=!4m12!1m6!3m5!1s0x94ce5b944452677b:0xd8cac2fbf200334a!2sParque+Independ%C3%AAncia!8m2!3d-23.5841629!4d-46.6098273!3m4!1s0x94ce5b944452677b:0xd8cac2fbf200334a!8m2!3d-23.5841629!4d-46.6098273';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Pagina não encontrada $url';
  }
}

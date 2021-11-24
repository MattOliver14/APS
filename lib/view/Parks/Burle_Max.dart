import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

const url = 'https://www.google.com/maps/place/Parque+Burle+Marx/@-23.6319835,-46.7219472,16z/data=!4m5!3m4!1s0x94ce51b32c909031:0xafb6a8bb13df8993!8m2!3d-23.6333022!4d-46.7221829';

class Burle_Max extends StatefulWidget {
  @override
  _Burle_MaxState createState() => _Burle_MaxState();
}

class _Burle_MaxState extends State<Burle_Max> {

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
                "Parque Burle Marx",
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
                                Text("Parque Burle Marx",
                                  style: TextStyle(fontSize: 24),),
                                Image.asset('assets/Parque_Burle_Marx.jpg',
                                    height: 180,
                                    width: 400,
                                    fit: BoxFit.cover),
                                SizedBox(height: 10,),
                                Text(
                                  "  O famoso parque Burle Marx foi criado pelo renomado arquiteto paisagista Burle Marx, e conta com espelhos d’água e um jardim de aproximadamente 4 mil m². Sua harmonia e beleza impressionam qualquer visitante.  \n",
                                  style: TextStyle(fontSize: 16),),
                                Text(
                                  "  A área conta com edifícios muito valiosos para a história e arquitetura, como a “Casa de Taipa e Pilão”, datada do século 19. Além disso, é um local incrivelmente relaxante, pois proporciona tranquilidade e paz, também é um lugar perfeito para as crianças brincarem. \n",
                                  style: TextStyle(fontSize: 16),),
                                Text(
                                  "   As trilhas são uma atração à parte e fazem o passeio ficar ainda melhor. Então, se procura um passeio em meio à natureza, saiba que pode escolher o Burle Marx.  ",
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
                                    Text("Av. Dona Helena Pereira de Moraes, 200 - Vila Andrade, São Paulo - SP, 05707-400 ",
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
                                    Text("De segunda a sexta das 08h ás 16h",
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
                                    Text("(11)  3746-7631 ",
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
                      const url = 'https://www.google.com/maps/place/Parque+Burle+Marx/@-23.6319835,-46.7219472,16z/data=!4m5!3m4!1s0x94ce51b32c909031:0xafb6a8bb13df8993!8m2!3d-23.6333022!4d-46.7221829';
                      _launchURL();
                    },
                    child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset("assets/max.maps.jpg",
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
  const url = 'https://www.google.com/maps/place/Parque+Burle+Marx/@-23.6319835,-46.7219472,16z/data=!4m5!3m4!1s0x94ce51b32c909031:0xafb6a8bb13df8993!8m2!3d-23.6333022!4d-46.7221829';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Pagina não encontrada $url';
  }
}

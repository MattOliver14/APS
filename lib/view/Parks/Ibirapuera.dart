import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

const url =
    'http://www.google.com/maps/place/Parque+Ibirapuera+-+Vila+Mariana,+S%C3%A3o+Paulo+-+SP/@-23.5870969,-46.6667791,15z/data=!3m1!4b1!4m5!3m4!1s0x94ce59f1a91c26a3:0x5fd57fbcb6222e5a!8m2!3d-23.5848438!4d-46.6559127';

class ibirapuera extends StatefulWidget {
  @override
  _ibirapueraState createState() => _ibirapueraState();
}

class _ibirapueraState extends State<ibirapuera> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Parque Ibirapuera",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color(0xff006c03),
              leading: IconButton(
                icon:
                    Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
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
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Parque Ibirapuera",
                              style: TextStyle(fontSize: 24),
                            ),
                            Image.asset('assets/ibirapuera.png',
                                height: 180, width: 400, fit: BoxFit.cover),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "  Entre os parques em São Paulo, o Ibirapuera é o mais conhecido. Com uma área de 1,6 km², oferece atrações como exposições, shows e feiras que atraem milhares de pessoas. Seu fácil acesso e os diversos eventos realizados fazem o local ser muito procurado. \n",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "  Também conhecido carinhosamente como Ibira, o parque abriga o MAM (Museu de Arte Moderna) e o Museu Afro Brasil, além do famoso Planetário Ibirapuera e uma maravilha da arquitetura, a Oca Ibirapuera, projetada por Oscar Niemeyer.\n",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "   Também é muito frequentado por quem gosta de correr, andar de skate, patins, bicicleta (dá para alugar) e praticar outros esportes ao ar livre. ",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(children: <Widget>[
                              Expanded(
                                child: Text("Endereço:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                    "Av. Pedro Álvares Cabral - Vila Mariana, São Paulo - SP, 04094-050 ",
                                    style: TextStyle(fontSize: 16)),
                              )
                            ]),
                            SizedBox(
                              height: 10,
                            ),
                            Row(children: <Widget>[
                              Expanded(
                                child: Text("Horarios:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text("Diariamente, das 05h à 00h ",
                                    style: TextStyle(fontSize: 16)),
                              )
                            ]),
                            SizedBox(
                              height: 10,
                            ),
                            Row(children: <Widget>[
                              Expanded(
                                child: Text("Telefone:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text("(11) 5574-5045 ",
                                    style: TextStyle(fontSize: 16)),
                              )
                            ]),
                            SizedBox(
                              height: 10,
                            ),
                            Row(children: <Widget>[
                              Expanded(
                                child: Text("Entrada:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text("Gratuita ",
                                    style: TextStyle(fontSize: 16)),
                              )
                            ]),
                          ]))),
              GestureDetector(
                onTap: () {
                  const url =
                      'http://www.google.com/maps/place/Parque+Ibirapuera+-+Vila+Mariana,+S%C3%A3o+Paulo+-+SP/@-23.5870969,-46.6667791,15z/data=!3m1!4b1!4m5!3m4!1s0x94ce59f1a91c26a3:0x5fd57fbcb6222e5a!8m2!3d-23.5848438!4d-46.6559127';
                  _launchURL();
                },
                child: Card(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    "assets/maps_ibira.png",
                    height: 180.0,
                    width: 550.0,
                  ),
                )),
              ),
              SizedBox(
                height: 20,
              )
            ]))));
  }
}

_launchURL() async {
  const url =
      'http://www.google.com/maps/place/Parque+Ibirapuera+-+Vila+Mariana,+S%C3%A3o+Paulo+-+SP/@-23.5870969,-46.6667791,15z/data=!3m1!4b1!4m5!3m4!1s0x94ce59f1a91c26a3:0x5fd57fbcb6222e5a!8m2!3d-23.5848438!4d-46.6559127';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Pagina não encontrada $url';
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

const url = 'https://www.google.com/maps/place/Jardim+Bot%C3%A2nico+de+S%C3%A3o+Paulo/@-23.6402086,-46.624398,15.46z/data=!4m5!3m4!1s0x94ce5b2203b99f37:0xe02451c8d4f252bc!8m2!3d-23.6392648!4d-46.6270159';

class Agua_Branca extends StatefulWidget {
  @override
  _Agua_BrancaState createState() => _Agua_BrancaState();
}

class _Agua_BrancaState extends State<Agua_Branca> {

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
                "Parque Água branca",
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
                                Text("Parque Água Branca",
                                  style: TextStyle(fontSize: 24),),
                                Image.asset('assets/Parque_da_Água_Branca.jpeg',
                                    height: 180,
                                    width: 400,
                                    fit: BoxFit.cover),
                                SizedBox(height: 10,),
                                Text(
                                  "  Quer se sentir como se estivesse no campo? O parque da Água Branca é a escolha ideal! O espaço oferece muitas atividades, principalmente para as crianças. Lá, você encontra parquinhos, lagos, hípica, carrossel e pula-pula.   \n",
                                  style: TextStyle(fontSize: 16),),
                                Text(
                                  "  Também é uma ótima opção de integração, pois o local tem espaços de convivência, esporte, dança e atividades em grupo. Além disso, o parque conta com o Aquário do Instituto de Pesca, o Museu Geológico, a Casa do Caboclo, um espaço de leitura e uma brinquedoteca. \n",
                                  style: TextStyle(fontSize: 16),),
                                Text(
                                  "  Com seus 137 mil m², dá para dizer que você sentirá um pouco do gostinho do campo nesse local.  \n",
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
                                    Text("Av. Francisco Matarazzo, 455 - Água Branca, São Paulo - SP, 05001-900",
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
                                    Text("Diariamente, das 18h às 20h",
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
                                    Text("(11) 3865-4130",
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
                      const url = 'https://www.google.com/maps/place/Parque+da+%C3%81gua+Branca+(Parque+Fernando+Costa)/@-23.5306798,-46.672236,17z/data=!3m1!4b1!4m5!3m4!1s0x94ce580322e40fcd:0x42829b6e0a6eb414!8m2!3d-23.5306847!4d-46.6700473';
                      _launchURL();
                    },
                    child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset("assets/aguabranca.maps.jpg",
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
  const url = 'https://www.google.com/maps/place/Parque+da+%C3%81gua+Branca+(Parque+Fernando+Costa)/@-23.5306798,-46.672236,17z/data=!3m1!4b1!4m5!3m4!1s0x94ce580322e40fcd:0x42829b6e0a6eb414!8m2!3d-23.5306847!4d-46.6700473';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Pagina não encontrada $url';
  }
}
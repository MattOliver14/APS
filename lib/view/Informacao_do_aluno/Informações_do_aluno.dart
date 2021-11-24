import 'package:flutter/material.dart';

import '../drawer.dart';

class Informacoes_Aluno extends StatefulWidget {
  @override
  _Informacoes_AlunoState createState() => _Informacoes_AlunoState();
}

class _Informacoes_AlunoState extends State<Informacoes_Aluno> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Informações do Aluno",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff1700ac),
      ),
      body: Column(children: <Widget>[
      Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/Matt.png"), // no matter how big it is, it won't overflow
          ),
          title: Text('Matheus de Oliveira'),
          subtitle: Text(
              'RA: N378786\nTurma: CC7P22'),
        ),
      ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/joao.jfif"), // no matter how big it is, it won't overflow
            ),
            title: Text('João Victor Narcizo'),
            subtitle: Text(
                'RA: N3104F3\nTurma: CC8P22'),
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/alan.png"), // no matter how big it is, it won't overflow
            ),
            title: Text('Alan Ramos Da Silva'),
            subtitle: Text(
                'RA: D819690\nTurma: CC7P22'),
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/kahique.png"), // no matter how big it is, it won't overflow
            ),
            title: Text('Kaique Daniel Scala Lopes'),
            subtitle: Text(
                'RA: N311134\nTurma: CC8P22'),
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/victoria.png"), // no matter how big it is, it won't overflow
            ),
            title: Text('Victoria Camargo'),
            subtitle: Text(
                'RA: N347457\nTurma: CC7P22'),
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/feh.png"), // no matter how big it is, it won't overflow
            ),
            title: Text('Fernanda Alencar Souza'),
            subtitle: Text(
                'RA: N273GE0\nTurma: CC8P22'),
          ),
        ),
    ]  )
    );
  }
}


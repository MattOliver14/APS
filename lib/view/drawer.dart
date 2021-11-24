import 'dart:developer';
import 'package:flutter/material.dart';
import 'dart:io';
import 'Home.dart';
import 'Informacao_do_aluno/Informações_do_aluno.dart';
import 'Parks/Parks.dart';


class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
         DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/ibira.jpg"),
                    fit: BoxFit.fitWidth)
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.brown,),
            title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              }
          ),
          ListTile(
            leading: Icon(Icons.park_rounded, color: Colors.green,),
            title: Text('Parques'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Parks()),
                );
              }
          ),
          ListTile(
            leading: Icon(Icons.person_pin_rounded, color: Color(0xff1700ac),),
            title: Text('Infomações do Aluno'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Informacoes_Aluno()),
                );
              }
          ),
        ],
      ),
    );
  }
}

internetcheck(context) async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      print('Internet conectada');
      log('Internet conectada');



      // SnackBar Connected
      final snackBar = SnackBar(
        content: Text('Conectado, estamos realizando o sincronismo!'),
        backgroundColor: Colors.teal,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 10),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }on SocketException catch (_) {
    print('not connected');
    log('Internet Não Conectada');
    // SnackBar Connected
    final snackBar = SnackBar(
      content: Text('Não Conectado, vamos tentar novamente mais tarde!'),
      backgroundColor: Colors.teal,
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 10),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}
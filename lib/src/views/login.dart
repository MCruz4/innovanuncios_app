

import 'package:flutter/material.dart';

import 'package:innovanuncios_app/src/views/dashboard.dart';

import 'dashboard.dart';


class LoginPage extends StatelessWidget {

Map<String, dynamic> uData = {'passwd': '123456','user': 'innovauser'};

TextEditingController userCtrl= new TextEditingController();
TextEditingController passwdCtrl= new TextEditingController();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
   title: 'InnovAnuncios',
    home: Scaffold(
      appBar: AppBar(
        title: Text('InnovAnuncios')
      ),
    body:  Container(
   child:  ListView(
     //children: //generateCards(),
      children: <Widget>[
        Image.asset('assets/imagen/logo.png', 
        width: 340, height: 350,),
       Text('Usuario'),
       TextField(
                  decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[600]),
                  hintText: "Usuario",
                  fillColor: Colors.white70,
                  icon: Icon(Icons.verified_user)
                  )
                ),
       Text('Contraseña'),
       TextField(
                  decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[600]),
                  hintText: "Contraseña",
                  fillColor: Colors.white70,
                  icon: Icon(Icons.no_encryption)
                  )
                ),
       RaisedButton(onPressed: (){
         if (userCtrl.text != '' && passwdCtrl.text != ''){
           if(userCtrl.text == uData['user'] &&
           passwdCtrl.text == uData['passwd']){
            Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()),
                      );
           }else{
             return showDialog(context: context, 
          builder: (context){
            return AlertDialog(
                          title: Text('Inicio de Sesion'),
                          content: Text('Porfavor, Revisa tus credenciales'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text("OK"),
                              onPressed: () { Navigator.of(context).pop(); },
                            )
                          ],
              );
          });
           }
         }else{
          return showDialog(context: context, 
          builder: (context){
            return AlertDialog(
                          title: Text('Inicio de Sesion'),
                          content: Text('Porfavor, Revisa tus credenciales'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text("OK"),
                              onPressed: () { Navigator.of(context).pop(); },
                            )
                          ],
              );
          });
         }
       }, 
       child: Text('Iniciar Sesion'))
      ],
   )
   )
 )
 );

  }
}
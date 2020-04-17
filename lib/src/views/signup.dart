import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Innovanuncios',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Registro'),
        ),
        body: Container(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Usuario',
              ),
            ),
        )
      ),
    );
  }
  
}
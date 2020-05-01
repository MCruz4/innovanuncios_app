import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:innovanuncios_app/behaviors/hiddenScrollBeHavior.dart';
import 'package:innovanuncios_app/src/views/login.dart';

class Signup extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SignUpState();
  
}

class _SignUpState extends State<Signup>{
  String _email;
  String _password;
  String _nombre;
  String _apellidos;
  double borderRadius = 10.00;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Registra tu cuenta')
       ),
      body: Container(
        padding: EdgeInsets.all(20.00),//Para que no se peguen a los bordes
        child: ScrollConfiguration(
          behavior: HiddenScrollBeHavior(),
          child: Form(
            child: ListView(
              children: <Widget>[
                Image.asset('assets/imagen/logo.png', 
        width: 250, height: 250,),
                SizedBox(height: 30,),
                TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  decoration: new InputDecoration(
                    labelText: 'Nombre',
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ), 
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: 'Apellidos'),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: 'Correo electronico'),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Contraseña'),
                ),
                
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Bienvenido a Innovanuncios',
                    style: TextStyle(color: Color.fromARGB(255, 200, 200, 200)),
                  ),
                ),
                SizedBox(height: 20,),
                RaisedButton(
                  onPressed: (){},
                  child: Text('Registrarme'),
                ),
              ],
            ),
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.person_add),
      ),
      persistentFooterButtons: <Widget>[
        FlatButton(
          onPressed: (){
            //Navigator.of(context).pushNamed('/signin');
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
          }, 
          child: Text('Ya tengo un cuenta'),)
      ],
    );
  }
}
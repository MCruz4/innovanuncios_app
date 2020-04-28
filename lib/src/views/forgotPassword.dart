import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ForgotPassword();
  
}

class _ForgotPassword extends State<ForgotPassword>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Registra tu cuenta')
       ),
      body: Center(child: Text('ForgotPassword '),),
    );
  }
}
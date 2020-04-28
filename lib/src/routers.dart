import 'package:flutter/material.dart';
import 'package:innovanuncios_app/src/views/forgotPassword.dart';
import 'package:innovanuncios_app/src/views/signup.dart';
import 'package:innovanuncios_app/src/views/dashboard.dart';
import 'package:innovanuncios_app/src/views/CodeExchange.dart';
import 'package:innovanuncios_app/src/views/login.dart';

/* Este archivo servira para agregar las rutas del proyecto,
agregar aqui cada una de las pantallas en las que se podra navegar,
no olviden importar la clase para que no marque error*/


Map<String, WidgetBuilder> builAppRoutes(){
  return {
    '/signin': (BuildContext context) => new LoginPage(),
    '/signup': (BuildContext context) => new Signup(),
    '/forgotpassword': (BuildContext context) => ForgotPassword(),
    '/dashboard': (BuildContext context) => new Dashboard(),
    '/codeExchange': (BuildContext context) => new CodeExchange()

  };
}
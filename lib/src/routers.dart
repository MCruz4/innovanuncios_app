import 'package:flutter/material.dart';
import 'package:innovanuncios_app/src/views/forgotPassword.dart';
import 'package:innovanuncios_app/src/views/SignIn.dart';
import 'package:innovanuncios_app/src/views/signup.dart';

/* Este archivo servira para agregar las rutas del proyecto,
agregar aqui cada una de las pantallas en las que se podra navegar,
no olviden importar la clase para que no marque error*/


Map<String, WidgetBuilder> builAppRoutes(){
  return {
    '/signin': (BuildContext context) => new SignIn(),
    '/signup': (BuildContext context) => new Signup(),
    '/forgotpassword': (BuildContext context) => ForgotPassword(),
  };
}
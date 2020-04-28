import 'package:flutter/material.dart';
import 'package:innovanuncios_app/src/routers.dart';
import 'package:innovanuncios_app/src/theme.dart';
import 'package:innovanuncios_app/src/views/signup.dart';


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  Widget rootPage = Signup();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Innovanuncios App',
      home: rootPage,
      routes: builAppRoutes(),
      theme: buildAppTheme(),
    );
  }

}

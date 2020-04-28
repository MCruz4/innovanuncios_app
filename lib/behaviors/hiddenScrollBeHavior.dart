import 'package:flutter/material.dart';
/*Este archivo sirve para controlar el scrollview y su funcionamiento
en pantalla pequemas*/

class HiddenScrollBeHavior extends ScrollBehavior{
  @override
  Widget buildViewportChrome(BuildContext context,Widget child, AxisDirection axisDirection){
    return child;
  }
}
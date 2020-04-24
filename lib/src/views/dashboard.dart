import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:innovanuncios_app/src/views/CodeExchange.dart';

Map<String, dynamic> uData = {'uid': '123456','uname': 'usuario_de_InnovAnuncios'};
Map<String, Map<String, Object>> pointsData = {'PizzaHut': {'points': '750',
                                'logoURL': 'https://www.admin.paseovinacentro.cl/assets/uploads/tienda/logo2/ba739-logo-pizza-hut.png',
                                'lastCode':'SuperHutCode',
                                'nameBussiness':'Pizza Hut'},

                    'ClaroESA': {'points': '800',
                                'logoURL': 'https://spiquers.com/wp-content/uploads/2014/10/Logo-Claro.png',
                                'lastCode':'CodClaroSV',
                                'nameBussiness':'Claro El Salavador'},

                    'SuperSelectos': {'points': '300',
                                'logoURL': 'https://www.baccredomatic.com/sites/default/files/sv_logoselectos.jpg',
                                'lastCode':'SelectoSV',
                                'nameBussiness':'Super Selectos'}};
  
//var pointsData = pointsDataMAP.values.toList();

class Dashboard extends StatelessWidget {

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
        initialView(context),
        card('PizzaHut'),
        card('ClaroESA'),
        card('SuperSelectos')
      ],
   )
   )
 )
 );
 }

 List<Widget> generateCards(){
   List<Widget> cardList = new List<Widget>();
    //print(pointsData);
    // For o ForEach o ForIn para recorrer la matriz y generarlos de manera dinamica,... 
    /*for (int i=0; i < 2; i++){
      final cardWidget = card(1);
      cardList.add(cardWidget);
    }*/

    //de momento recorriendo el array de forma manual
    cardList.add(card('PizzaHut'));
    cardList.add(card('ClaroESA'));
    cardList.add(card('SuperSelectos'));
    return cardList;
 }

  Widget initialView(BuildContext context){
    return Column( 
        children: <Widget>[
       uNameShow(),
       new Builder(builder: (context) =>( RaisedButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CodeExchange()),
                      );
                    },
                    textColor: Colors.white,
                    color: Colors.blue,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Canjear Código",
                    )
                  
                  ))),
       Text('Mis InnovaPuntos: \n', 
        style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18
        )
       ),
     ]
       
   );
  }

  Widget uNameShow() {
   return Align(
     alignment: Alignment.center,
     child: RichText(
       text: TextSpan(
         text: '\n' + uData['uname'] + '\n',
         style: TextStyle(
             fontWeight: FontWeight.bold, color: Colors.green, fontSize: 20)
       ), //TextSpan
     ),// RichText
   ); // Align
  }

  void goToCodeExchange(){
    
  }

Widget card(String objectIndex){

  return Card(
              elevation: 5,
              child: Container(
              height: 100.0,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 70.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5)
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(pointsData[objectIndex]['logoURL'])
                      )
                    ),
                  ),
                  Container(
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(pointsData[objectIndex]['nameBussiness'],style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 48, 48, 54)
                              )
                            ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                              child: Container(
                              width: 260,
                              child: Text('Último Canjeado: '+ pointsData[objectIndex]['lastCode'])
                            )
                          ),//Nombre de empresa
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                               child: Container(
                              //width: 30,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.teal),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(3),
                                child: Text(''+pointsData[objectIndex]['points'] +' Puntos',textAlign: TextAlign.center,)
                              ),
                            ),
                          ), // Fin paddgin de puntos
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );

}



}// Fin de la clase Dashboard


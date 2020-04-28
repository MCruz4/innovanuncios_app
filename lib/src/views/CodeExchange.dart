import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:innovanuncios_app/src/views/dashboard.dart';

 Map<String, Map<String, Object>> bussinessData ={
  'PizzaHut': {'logoURL': 'https://www.admin.paseovinacentro.cl/assets/uploads/tienda/logo2/ba739-logo-pizza-hut.png',
                'nameBussiness':'Pizza Hut', 
                'availableCode': 'HutCode2020',
                'pointsToChange': '150'},
    'PapaJhons': {'logoURL': 'https://media-cdn.tripadvisor.com/media/photo-s/10/c8/58/ee/papa-john-s-pizza.jpg',
                'nameBussiness':'Papa John\'s',
                'availableCode': 'AllYouCanChange',
                'pointsToChange': '200'},
    'KFC': {'logoURL': 'https://www.stickpng.com/assets/images/58429977a6515b1e0ad75ade.png',
                'nameBussiness':'KFC Kentucky',
                'availableCode': 'KFCForYou',
                'pointsToChange': '210'},
    'ClaroESA': {'logoURL': 'https://spiquers.com/wp-content/uploads/2014/10/Logo-Claro.png',
                'nameBussiness':'Claro el Salvador',
                'availableCode': 'ClaroQueSi',
                'pointsToChange': '200'},
    'Flynet': {'logoURL': 'http://flynetwifi.com/assets/images/logo-clean.png',
                'nameBussiness':'Flynet',
                'availableCode': 'VuelaConNosotros',
                'pointsToChange': '300'},
    'Tigo': {'logoURL': 'https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/0023/3100/brand.gif?itok=x_TGmxDX',
                'nameBussiness':'Tigo El Salvador'},
    'Digicel': {'logoURL': 'https://media-exp1.licdn.com/dms/image/C4D0BAQGsGV9sA9N0oQ/company-logo_200_200/0?e=2159024400&v=beta&t=URL9Anm4cYwcRGMcYjsUu9nXiSd11skeJnEjtxVmrQs',
                'nameBussiness':'Digicel',
                'availableCode': 'PrimeroEresTu',
                'pointsToChange': '200'},
    'HeladosSarita': {'logoURL': 'https://metrocentro-samantha.s3.amazonaws.com/uploads/post/logo_v2/5680/Untitled-1.jpg',
                'nameBussiness':'Helados Sarita',
                'availableCode': 'ComparteAlegria',
                'pointsToChange': '200'},
    'LibreriaDM': {'logoURL': 'https://boriaed.com/wp-content/uploads/2017/02/LOGO-DIEGO-MARIN.png',
                'nameBussiness':'Libreria y Papelería DM',
                'availableCode': 'DM_2020',
                'pointsToChange': '180'},
    'GBCBurger': {'logoURL': 'https://www.getmyfood.com.sv/img/restaurants/10c9db2ed2d7a37ff5b6d495fb2d8c2a.png',
                'nameBussiness':'GBC Burger',
                'availableCode': 'BurgerBurger',
                'pointsToChange': '200'},
    'Tropigas': {'logoURL': 'https://i0.wp.com/www.ofertasahora.com/wp-content/uploads/2017/07/Logo-almacenes-tropigas-el-salvador.png?fit=300%2C300&ssl=1',
                'nameBussiness':'Almacenes Tropigas',
                'availableCode': 'TropiCode',
                'pointsToChange': '200'},
    'ADOC': {'logoURL': 'https://joven360.s3.amazonaws.com/uploads/companies/logos/17/medium_logointerno_cuadrad_1A9FF53.jpg',
                'nameBussiness':'ADOC',
                'availableCode': 'CodigoPadre',
                'pointsToChange': '200'},
    'Texaco': {'logoURL': 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQIyCHybo_98xvgFkhprKu5fampnBPPYlWIkjwL6y7x1YaUCgVO&usqp=CAU',
                'nameBussiness':'Texaco El Salvador',
                'availableCode': 'LlegaMasLejos',
                'pointsToChange': '300'}
  };

String selectedBussinessID = '';
class CodeExchange extends StatelessWidget{

  final inputCodeCtrl = TextEditingController();
  Widget build(BuildContext context) {
    
     return Scaffold(
              appBar: AppBar(
                title: Text('InnovAnuncios')
              ),
            body:  Container(
          child:  Column(
              children: <Widget>[
                Row(children: <Widget>[
                  Text('\n \tIngresar Código: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                ]),
                TextField(
                  controller: inputCodeCtrl,
                  decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[500]),
                  hintText: "Ingresar el código",
                  fillColor: Colors.white70
                  )
                ),
                 RaisedButton(child: Text("Canjear"),
                onPressed: (){
                  return showDialog(context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text('Canjeo de codigo'),
                              content: Text(comprobeCode()),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text("OK"),
                                  onPressed: () { Navigator.of(context).pop(); },
                                )
                              ],
                  );
                  }
                  );
                }
                ),
                
                Text('\n Selecciona la empresa a la que pertenece el codigo', style: TextStyle(fontSize: 18)),
                TextField(
                  decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[600]),
                  hintText: "Buscar Empresa",
                  fillColor: Colors.white70,
                  icon: Icon(Icons.find_in_page)
                  )
                ),
                //-----------------------Lista de empresas--------------------//
                Divider(),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      text: 'Empresas',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 22)
                    ), //TextSpan
                  ),// RichText
                ),
                Divider(),
                Column(
                  //children: bussinessList()
                  children: bussinessList(),
                )
              ]
            )
          )
        );
  } // Fin clase CodeExchange
  
  Widget card(String objectIndex){
    return Card(
              elevation: 5,
              child: InkWell(
                child: Container(
              height: 70.0,
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
                        image: NetworkImage(bussinessData[objectIndex]['logoURL'])
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
                          Text(bussinessData[objectIndex]['nameBussiness'],style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 48, 48, 54)
                              )
                            )//Nombre de la empresa
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            onTap: (){
              selectedBussinessID = objectIndex;
            },
            )
          );
  }
  //Preparar arreglo de Widgets con las empresas
  List<Widget> bussinessList(){
    List<Widget> listBussiness = new List<Widget>();
    listBussiness.add(card('PizzaHut'));
    listBussiness.add(card('PapaJhons'));
    listBussiness.add(card('KFC'));
    listBussiness.add(card('ClaroESA'));
    /*listBussiness.add(card('Flynet'));
    listBussiness.add(card('Tigo'));
    listBussiness.add(card('Digicel'));
    listBussiness.add(card('HeladosSarita'));
    listBussiness.add(card('LibreriaDM'));
    listBussiness.add(card('GBCBurger'));
    listBussiness.add(card('Tropigas'));
    listBussiness.add(card('ADOC'));
    listBussiness.add(card('Texaco'));*/

    return listBussiness;
  }

  String comprobeCode(){
    if(inputCodeCtrl.text != '' && selectedBussinessID != ''){
      /* Realizar peticion al API REST para consultar la validacion del codigo , enviando el userID, Codigo y IDdeEmpresa
          Retorna un valor numerico (para manejar 3 situaciones: 1)Código no válido o expirado, 2) Código ya canjeado, 3) No se pudo comprobar, intente mas tarde)*/ 
      
      //Temporalmente: la comprobacion hecha desde codigo (se debe de evaluar el valor de tipo entero retornado por el servidor)
      // La informacioin de los puntos, se recibirán por medio de respuesta de la API
      if(bussinessData[selectedBussinessID]['availableCode'] == inputCodeCtrl.text){
         return 'has recibido ' + bussinessData[selectedBussinessID]['pointsToChange'] + ' acumulables para la empresa ' + 
                                  bussinessData[selectedBussinessID]['nameBussiness'];
      }else{
         return 'Código no válido o expirado para ' + bussinessData[selectedBussinessID]['nameBussiness'];
      }

    }else{
      
      return "¡Debes Llenar los campos y elegir una empresa!";
    }
  }



}// Fin  clase
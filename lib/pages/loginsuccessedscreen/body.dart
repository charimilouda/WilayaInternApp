import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/accueil/accueil.dart';
import 'package:untitled/pages/login_screen.dart';
import 'package:untitled/pages/roundedButton.dart';
import 'package:untitled/pages/splach.dart';

import '../../constants.dart';

class body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Column(
    children: [
      
      Image.asset(
              "assets/tick.png",color: kPrimarylightColor,width: 450,
            ),
            Text("Reussi !",
            style:TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black),
              ),
              Spacer(),
              /*roundedButton(text: "back to home",color: Colors.grey, press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return Splash();}));
              }),*/
              roundedButton(text: "Continuer",textColor: Colors.white ,color: kPrimaryColor, press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return accueil();}));
              }),
              Spacer(),
    ],
   );
  }

}
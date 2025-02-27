




// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/background.dart';
import 'package:untitled/pages/screen2/forgotpassword.dart';

import 'package:untitled/pages/login_screen.dart';
import 'package:untitled/pages/roundedButton.dart';
import 'package:untitled/pages/sign%20up/sugn_upscreen.dart';



class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return background(
      child: SingleChildScrollView (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[Text(
             "YourIntern",
             
             style: TextStyle(fontWeight:FontWeight.bold,letterSpacing: 3,fontSize: 30,color:  Colors.black),
            ),
            Text(
             "Bienvenue dans YourIntern",
            ),
            Image.asset("assets/123.png",height: size.height*0.4,
           ),
           
            SizedBox(height: size.height*0.005,),
          roundedButton(
            text: "SE CONNECTER",textColor:Colors.white ,
            press:(){Navigator.push(
              context,
               MaterialPageRoute(builder:(context){return loginscreen();},),);},
          ),
          roundedButton(
            text: "S'INSCRIRE",
            color: kPrimarylightColor,
            textColor: Colors.white,
            press:(){
               Navigator.push(context, MaterialPageRoute(
                  builder: (context){return SignUpScreen()/*forgotPassword()*/;
                  }),
                  );
            },
          )
          ],
        ),
      )
      );
  }

}


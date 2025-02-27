import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/custom_buttom_nav_bar.dart';
import 'package:untitled/pages/roundedButton.dart';
import 'package:untitled/pages/verification/custonn_pin_code.dart';
import 'package:untitled/pages/verification/password_recovery.dart';

class verification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar :AppBar(
          backgroundColor: kPrimaryColor,
              title: Text("Verification"),
              centerTitle: true,
            ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height: 30,),
                    Text(
                      "Vérifier votre Email ",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Nous avons envoyé un code de vérification à votre Email enregistré ",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      
                    ),
                    SizedBox(height: 60,),
                    customPinCode(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Le code expire dans  ",style: Theme.of(context).textTheme.bodyText2,),
                        Text("3.10",style: Theme.of(context).textTheme.bodyText1?.copyWith(color: kPrimarylightColor),)
                      ],
        
                    )
                  ],
                ),
                SizedBox(height: 30),
                Column(children: [
                  roundedButton(text: "Verfier",
                  press: ()
                  {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>passwordrecoveryScreen(),));
                  },),
                  roundedButton(text: "renvoyer ",textColor: kPrimaryColor,color: Color.fromARGB(255, 205, 207, 96),
                  press: (){},)
                ],)
              ],
            ),
          ),
        ),
      ));
  }
}
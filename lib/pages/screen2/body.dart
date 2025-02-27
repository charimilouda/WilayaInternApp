// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/RoundedInputField.dart';
import 'package:untitled/pages/backgrund2.dart';
import 'package:untitled/pages/loginsuccessedscreen/loginsuccess.dart';
import 'package:untitled/pages/roundedButton.dart';
import 'package:untitled/pages/screen2/passxordforgottenfieled.dart';
import 'package:untitled/pages/text_field_container.dart';
import 'package:untitled/pages/verification/verificationpage.dart';
class body extends StatelessWidget
{
  final _formkey=GlobalKey<FormState>();
  List <String> erreurs =[];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return background2(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.height*0.1,),
               Text("Mot de passe oublié",
               style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              
               ),
               ),SizedBox(height: size.height*0.02,),
              
              Text(
                " Si vous avez oublié votre mot de passe, entrez votre \naddresse email ci-dessous et cliquez sur Envoyer",
              textAlign: TextAlign.center,),
              SizedBox(height: size.height*0.1,),
              RoundedInputField(hintText: "abcd@email.com",onChanged: (value){}
                 ),
                 SizedBox(height: size.height*0.2,),
                 /*Row(
                  children: [
                    Icon(Icons.error),
                    Text(erreurs[0])
                  ],
                 ),*/
                 SizedBox(
                   child: roundedButton(
                    text: "SOUMETTRE",press: (){
                      /*if(_formkey.currentState!.validate()){
                 
                      }*/
                      Navigator.push(context, MaterialPageRoute(
                    builder: (context){return verification();
                    }),
                    );
                 
                    },),
                 ),
            
             
            ],
              
          ),
        ),
      ),
    );
  }

}



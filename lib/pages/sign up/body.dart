import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/RoundedInputField.dart';
import 'package:untitled/pages/RoundedPasswordField.dart';
import 'package:untitled/pages/already_have_an_account.dart';
import 'package:untitled/pages/login_screen.dart';
import 'package:untitled/pages/loginsuccessedscreen/loginsuccess.dart';
import 'package:untitled/pages/roundedButton.dart';
import 'package:untitled/pages/sign%20up/background.dart';
import 'package:untitled/pages/sign%20up/namefieled.dart';
import 'package:untitled/pages/sign%20up/numerodephonefieled.dart';
import 'package:untitled/pages/sign%20up/or_devider.dart';
import 'package:untitled/pages/sign%20up/socialimages.dart';

class Body extends StatefulWidget {
  final Widget child;

  const Body({
    super.key,
     required this.child});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late String name,email,password,phone;
  
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return background(child:
     SingleChildScrollView(
       child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
          
          
            SizedBox(height: size.height*0.03,),
            namefield(
              hintText: "Nom et Prenom complet",
             onChanged: (value){
              setState(() {
                this.name=value;
              });
             }
            ),
            RoundedInputField(hintText: "abc@email.com",
             onChanged: (value){
              this.email=value;
             }),
            RoundedPasswordField(onChanged: (value){
              setState(() {
                this.password=value;
              });
            },),
            numerofonefailed(hintText: "Numero de telephone",
             onChanged: (value){
              this.phone=value;
             }),
             roundedButton(
                text: "S'INSCRIRE",press: (){Navigator.push(context, MaterialPageRoute(
                  builder: (context){return loginsuccessScreen();
                  }),
                  );},),
                  
                SizedBox(height: size.height*0.03,),
                alreadyHaveAnAccountCheck(
                  login: false,
                  press: (){Navigator.push(context,MaterialPageRoute(builder: (context){return loginscreen();},),);},
                ),
                
                OrDivider(),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: <Widget>[
                    socalIcon(
                      iconSrc: "assets/facebbok.png",
                      press: (){},
                    ),
                    socalIcon(
                      iconSrc: "assets/google.png",
                      press: (){},
                    ),
                    socalIcon(
                      iconSrc: "assets/linkedin.png",
                      press: (){},
                    )
                  ],
                )
          ]
          ),
     ) ,
        );

  }
}


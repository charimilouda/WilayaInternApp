import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';


class alreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;


  final Function() press;
  const alreadyHaveAnAccountCheck({
    Key? key,
      this.login=true,
      required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var kPrimaryColor2 = kPrimaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>
      [Text(
        login?  "Vous n'avez pas encore de compte?":"Vous avez déja un Compte ?",
        style: TextStyle(color: Colors.red),
        ),
      GestureDetector(
        
        onTap:press,
        child: Text(
          login?"Inscrivez-vous" : "Se connecter", 
          style: TextStyle(
            color: kPrimaryColor2,fontWeight: FontWeight.bold),),
      )

    ]);
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/RoundedInputField.dart';
import 'package:untitled/pages/roundedButton.dart';
import 'package:untitled/pages/text_field_container.dart';
import 'package:untitled/pages/verification/new_password.dart';

import '../backgrund2.dart';

class passwordrecoveryScreen
 extends StatelessWidget {
  const passwordrecoveryScreen
  ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return background2(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Récupération de mot de passe"),
            backgroundColor: kPrimaryColor,),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*Text("Récupération de mot de passe",
              style: Theme.of(context).textTheme.headline5
              ),*/
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text("Entrer votre Email pour modifier votre mot de passe",
                style: Theme.of(context).textTheme.bodyText1,
                
                ),
              ),
              SizedBox(height: 40,),
              RoundedInputField(hintText: "Email ou numero de telephone",onChanged: (value){/*
                  setState((){this._Email=value;});*/},
                 icon: Icons.email_rounded,),
                 roundedButton(
                  text: "Suivant",
                   press: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => newpasswordScreen(),));
                 },
                 )
            ],
          ),
        ),
        ),
      ),
    );
  }
}
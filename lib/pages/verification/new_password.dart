import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/RoundedInputField.dart';
import 'package:untitled/pages/RoundedPasswordField.dart';
import 'package:untitled/pages/loginsuccessedscreen/loginsuccess.dart';
import 'package:untitled/pages/roundedButton.dart';
import 'package:untitled/pages/text_field_container.dart';
import 'package:untitled/pages/verification/roundedpass.dart';
import 'package:untitled/pages/verification/roundedpass2.dart';

class newpasswordScreen extends StatefulWidget {
   newpasswordScreen({Key? key}) : super(key: key);

  @override
  State<newpasswordScreen> createState() => _newpasswordScreenState();
}

class _newpasswordScreenState extends State<newpasswordScreen> {
  bool _contansANumber =false;
bool _numberofDigits = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
      
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
              Text("Rénitialiser le mot de passe",style: Theme.of(context).textTheme.headline5,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Veuillez entrer votre nouveau mot de passe",style: Theme.of(context).textTheme.bodyText1,),
              ),
              
              RoundedPasswordField2( onChanged: (value){}),
             RoundedPasswordField2( onChanged: (value){}),
             SizedBox(height: 20,),
             passwordTerms(ateast6: _contansANumber,contains:_contansANumber),
             SizedBox(height: 20,),
             roundedButton(text: "Envoyer", press: (){Navigator.push(context, MaterialPageRoute(
                    builder: (context){return loginsuccessScreen();
                    }),
                    );}),
            ],
            
          ),
        ),
      ),
    ));
  }
  passwordTerms({required bool contains,
required bool ateast6,

}) {
    return Column(
      children: [
        Row(
          children: [
            Text(
            "votre mot de passe doit contenir : ",
            style: Theme.of(context).textTheme.  bodyText1!.copyWith(color:kPrimaryColor)
          ),  
          ],
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: ateast6 ==false ? outline : Colors.white,
              child: Icon(Icons.done,
              size: 12,
              color: ateast6 ==false ? secondaryText : kPrimaryColor,),
            ),
            Text(
              "Au moins 6 caractères",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(color: ateast6== false ? secondaryText: kPrimaryColor
              ),
            )
          ],
          
        ),
        SizedBox(height: 15,),
        Row(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: contains ==false ? outline : Colors.white,
              child: Icon(Icons.done,
              size: 12,
              color: contains ==  false ? secondaryText : kPrimaryColor,
            ),
            
        ),
        Text(
              "Contient un nombre",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(color: kPrimaryColor),
              ),],
        )
      ],
    );}
  
}
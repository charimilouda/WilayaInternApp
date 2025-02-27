// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/RoundedInputField.dart';
import 'package:untitled/pages/RoundedPasswordField.dart';
import 'package:untitled/pages/already_have_an_account.dart';
import 'package:untitled/pages/backgrund2.dart';
import 'package:untitled/pages/loginsuccessedscreen/loginsuccess.dart';
import 'package:untitled/pages/sign%20up/remember.dart';
import 'screen2/forgotpassword.dart';
import 'package:untitled/pages/roundedButton.dart';
import 'package:untitled/pages/sign%20up/sugn_upscreen.dart';
import 'package:untitled/pages/text_field_container.dart';
import 'screen2/forgotpassword.dart';
class Body2 extends StatefulWidget {
   Body2({
    Key? key,
    
  }) : super(key: key);
  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  
/*GlobalKey <FormState>formkey = GlobalKey<FormState>();
void validate(){
  if (formkey.currentState!.validate()){
    print("validated");
  }
  else 
  {
    print("not validated");
  }
}*/
/*final List<String> erreurs=[];*/
bool remember=false;
late String _Email,_password;

  @override
  

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return background2(
    //key: formkey,
      child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
                "Bienvenue",
                style: TextStyle(color: Colors.black,
                fontSize:30,
                    fontWeight:FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text(
                "connectez-vous avec votre e-mail et votre mot de passe \n ",
                textAlign: TextAlign.center,
              ),
              
               SizedBox(height: size.height*0.1,),
               RoundedInputField(hintText: "abc@email.com",onChanged: (value){
                setState((){this._Email=value;});
               }
               ),
               RoundedPasswordField(
                onChanged: (value){
                  setState((){this._password=value;});
                },),
                rememberme(),
              roundedButton(
                text: "SE CONNECTER",press: (){
                  //validate();
                  Navigator.push(context, MaterialPageRoute(
                  builder: (context){return loginsuccessScreen();
                  }),
                  );},),
                
                GestureDetector(
                        onTap: ()=>Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=> forgotPassword()),),
                        child: Text(
                          "mot de passe oublié?",
                          style: TextStyle(decoration: TextDecoration.underline),
                          )
                          ),
      
                          
                SizedBox(height: size.height*0.03,),
                alreadyHaveAnAccountCheck(
                  press: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context){return SignUpScreen();
                    }),
                    );
                    },
                    )
        ],
          ),
      ),
    );
  }
}


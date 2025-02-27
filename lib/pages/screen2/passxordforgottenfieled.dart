import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/text_field_container.dart';

class passwordForgottenfieled extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged <String> onChanged;

   passwordForgottenfieled({
    Key? key,
     required this.hintText,
       this.icon =Icons.mail,
       required this.onChanged,
  }) : super(key: key);

  @override
  State<passwordForgottenfieled> createState() => _passwordForgottenfieledState();
}

class _passwordForgottenfieledState extends State<passwordForgottenfieled> {
  final _formkey=GlobalKey<FormState>();

  List <String> erreurs =[];

  late String email;

  @override
  Widget build(BuildContext context) {
    return textFailedcontainer(
      child: Form(
        key: _formkey,
    child: SingleChildScrollView(
     
       // padding:  EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
      child: Column(children: [
      
        //SizedBox(height: SizeConfig.screenHeight*0.04,)
      
      TextFormField(
      
        keyboardType: TextInputType.emailAddress,
        /*validator: (value){
      
          if (value!.isEmpty && !erreurs.contains(kEmailNullError))
      
          {
      
                erreurs.add(kEmailNullError)  ;
      
          }else if(!emailValidatorRegExp.hasMatch(value)&&
      
            !erreurs.contains(kInvalidEmailError))
      
         {setState(() {
      
             erreurs.add(kInvalidEmailError);
      
         });
      
         }
      
         return null;
      
        },
        onSaved: (newValue)=>email=newValue!,
      
        onChanged: (Value){
      
          if (Value.isNotEmpty && erreurs.contains(kEmailNullError)){
      
            setState(() {
      
              erreurs.remove(kEmailNullError);
      
            });
      
          }else if (emailValidatorRegExp.hasMatch(Value)&&
      
            erreurs.contains(kInvalidEmailError)
      
          ){
      
            setState(() {
      
              erreurs.remove(kInvalidEmailError);
      
            });
      
          }
      
          return null;
      
        },*/
      
        
      
        decoration: InputDecoration(
      
          labelText: "Email",
      
          hintText: "fax@email.com",
      
          floatingLabelBehavior: FloatingLabelBehavior.always,
      
          suffixIcon:Icon(Icons.mail,color:kPrimaryColor,),
          border: InputBorder.none,
      
        ),
      
      ),
      
      
      //SizedBox(height: SizeConfig.screenHeight*0.1,)
      
      //FormError(erreurs:erreurs),
      
      //DefaultButton(text: "continue",press(){},),
      
      
      
      
     
      ],
      
      ),
      
      
    ),
    ),
    ); 
  }
}


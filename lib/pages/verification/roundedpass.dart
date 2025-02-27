import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/text_field_container.dart';
import 'package:untitled/pages/Body2.dart';


class RoundedPasswordField2 extends StatefulWidget {
  final ValueChanged <String> onChanged;
   RoundedPasswordField2({
    Key? key,
     required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField2> createState() => _RoundedPasswordField2State();
}

class _RoundedPasswordField2State extends State<RoundedPasswordField2> {
late bool _passwordvisible=false ;
    bool _contansANumber =false;
bool _numberofDigits = false;
  @override
  void initState(){_passwordvisible = false;}

  Widget build(BuildContext context) {
    return textFailedcontainer(
      child: TextFormField
    (
      validator: ( (value) {
        if(value!.isEmpty){return "*password needed";}
          
      }),
      maxLength: 8,
     obscureText: !_passwordvisible,
     onChanged: (value){
      setState(() {
        _numberofDigits = value.length < 6 ? false : true;
      });
      
     },
     decoration: InputDecoration(
     labelText: " Nouveau Mot de passe",
     icon: Icon(
       Icons.lock,color: kPrimaryColor,
       ),
       suffixIcon: IconButton(icon: Icon(_passwordvisible ? Icons.visibility : Icons.visibility_off,color: kPrimaryColor,),
       onPressed:(){setState((){_passwordvisible = !_passwordvisible;});} ,
       ),
       
       border: InputBorder.none,
    ),
    
    ),

            );

  }
  //khassni ndir l'appel hnaaa
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
        SizedBox(height: 0,),
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
              "Contains a number",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(color: kPrimaryColor),
              ),],
        )
      ],
    );}
  
}
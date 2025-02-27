import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/text_field_container.dart';
import 'package:untitled/pages/Body2.dart';


class RoundedPasswordField extends StatefulWidget {
  final ValueChanged <String> onChanged;
   RoundedPasswordField({
    Key? key,
     required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
late bool _passwordvisible=false ;
GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  void initState(){_passwordvisible = false;}

  Widget build(BuildContext context) {
    return textFailedcontainer(
      child: TextFormField
    (
      maxLength: 8,
     obscureText:  !_passwordvisible,
     onChanged: widget.onChanged,
      
     validator: ( (value) {
        if(value!.isEmpty){return "*password needed";}
          
     }),
      //(val){return val.length <6 ? 'entrer un mot de passe plus long de 6 caracteres':null;},),
      
     decoration: InputDecoration(
     labelText: "Mot de passe",
     
     icon: Icon(
       Icons.lock,color: kPrimaryColor,
       ),
       
       suffixIcon: IconButton(icon: Icon(_passwordvisible ? Icons.visibility : Icons.visibility_off,color: kPrimaryColor,),
       onPressed:(){setState((){_passwordvisible = !_passwordvisible;});} ,
       ),
       border: InputBorder.none,
    )
    )
            ,);
  }
}


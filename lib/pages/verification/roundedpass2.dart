import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/text_field_container.dart';
import 'package:untitled/pages/Body2.dart';


class RoundedPasswordField3 extends StatefulWidget {
  final ValueChanged <String> onChanged;
   RoundedPasswordField3({
    Key? key,
     required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField3> createState() => _RoundedPasswordField2State();
}

class _RoundedPasswordField2State extends State<RoundedPasswordField3> {
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
        _contansANumber = value.length < 6 ? false : true;
      });
      
     },
     decoration: InputDecoration(
     labelText: " Confirmez le mot de passe",
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
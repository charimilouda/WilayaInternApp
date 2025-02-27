import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'Body2.dart';
import 'package:untitled/pages/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged <String> onChanged;
  const RoundedInputField({
    Key? key,
     required this.hintText,
       this.icon =Icons.person,
       required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return textFailedcontainer(
     child:TextFormField(
      keyboardType: TextInputType.emailAddress,
     
      onChanged: onChanged,
         decoration: InputDecoration(
           icon: Icon(Icons.mail,color:kPrimaryColor,),
           labelText: "Email",
           floatingLabelBehavior: FloatingLabelBehavior.always,
           hintText: hintText,
           
           border: InputBorder.none,
         ),
    )
    );
  }
}


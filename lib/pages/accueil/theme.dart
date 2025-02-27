import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/accueil/dateformfield.dart';

class themehelper{
  InputDecoration textInputdecoration([String labelText=""]){
    return InputDecoration(
    labelText: labelText,
    fillColor: Colors.white,
    filled: true,
    contentPadding: EdgeInsets.fromLTRB(20,10,20, 10),
  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.vertical(),borderSide: BorderSide(color: Color.fromARGB(255, 10, 54, 90)),
    
),
enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.vertical(),borderSide: BorderSide(color: Color.fromARGB(255, 35, 90, 135)),
    
),
errorBorder: OutlineInputBorder(borderRadius: BorderRadius.vertical(),borderSide: BorderSide(color: Colors.red),
    
),
focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.vertical(),borderSide: BorderSide(color: Colors.red),
    
),
  );
  }

  

}
class formstyle 
{
  

}
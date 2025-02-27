import 'package:flutter/cupertino.dart';


import'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/screen2/body.dart';

class forgotPassword extends StatelessWidget {
  static String routeName="/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Mot de passe oublié",style: TextStyle(color: Color(0xFF888888)),) ,
        backgroundColor: Colors.white,
        centerTitle: true
        
      ),
      body: body(),
    );
  }

}
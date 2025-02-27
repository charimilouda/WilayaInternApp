import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/Body2.dart';
class loginscreen extends StatelessWidget { 
  static String routename="/login"; 
   @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Se connecter",style: TextStyle(color: Ksecondarycolor),),
        centerTitle: true
      ),
      body: Body2(),
    );
  }
}


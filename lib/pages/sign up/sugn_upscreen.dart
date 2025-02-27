
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/sign%20up/body.dart';


class SignUpScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "S'inscrire",
          style: TextStyle(color: Ksecondarycolor),),
      backgroundColor: Colors.white,
      centerTitle: true
      ),
      body: Body(child: Column(

    ),
    ),

    );
  }

}



import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/accueil/body3.dart';
import 'package:untitled/pages/loginsuccessedscreen/body.dart';


class successScreen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        backgroundColor: Colors.white,
        //title: Text("Login success",style: TextStyle(color: Ksecondarycolor),),centerTitle: true,
      ),
      body: body3(),
    )
    ;
  }

}
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/loginsuccessedscreen/body.dart';


class loginsuccessScreen extends StatelessWidget{
  static String routename="/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        backgroundColor: Colors.white,
        title: Text("Connexion réussie",style: TextStyle(color: Ksecondarycolor),),centerTitle: true,
      ),
      body: body(),
    )
    ;
  }

}
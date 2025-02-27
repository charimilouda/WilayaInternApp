//import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/custom_buttom_nav_bar.dart';
import 'package:untitled/enums.dart';
import 'package:untitled/pages/accueil/body.dart';
import 'package:untitled/pages/splach.dart';

class accueil extends StatefulWidget{
  static String routename="/accueil";

  @override
  State<accueil> createState() => _accueilState();
}

class _accueilState extends State<accueil> {
 //FirebaseAuth instance = FirebaseAuth.instance;//server authentification data base 
  @override
  /*void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
  }*/
  
  late String _nomComplet;
  late String _genre;
  late String _Etablissement;
  
  //final GlobalKey<FormState> => _formKey = GlobalKey<FormState>();
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
       leading: SizedBox(), 
        backgroundColor: kPrimaryColor),
      body: body(),
       bottomNavigationBar: CustomBottomNavBar(selectmenu: MenuState.home),
    );
  }
}

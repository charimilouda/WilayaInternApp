

//import 'package:firebase_core/firebase_core.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/Splach.dart';
import 'package:untitled/pages/accueil/accueil.dart';

//import 'package:untitled/pages/splach.dart';
import 'package:untitled/pages/splash1.dart';

import 'package:untitled/pages/user%20profile/profilescreen.dart';

import 'pages/admin/accadmin.dart';


Future main() async{
 /*WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();*/
  runApp( LoginUIApp());
  
}
class LoginUIApp extends StatefulWidget{
  @override
  State<LoginUIApp> createState() => _LoginUIAppState();
}

class _LoginUIAppState extends State<LoginUIApp> {
  @override
  Widget build(BuildContext context)
   {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor ,
       
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Color.fromARGB(255, 162, 160, 160),
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.red),
        textTheme: TextTheme(
          headline6: TextStyle(color: Color(0xFF888888),fontSize: 18))
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Ktextcolor),
         bodyText2: TextStyle(color: Ktextcolor)
         ),
         visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  splash1() ,/*accadmin()*/
      debugShowCheckedModeBanner: false,
    );
  }
}




import 'package:flutter/material.dart';
import 'package:untitled/pages/accueil/accueil.dart';
import 'package:untitled/pages/loginsuccessedscreen/loginsuccess.dart';
import 'package:untitled/pages/screen2/forgotpassword.dart';
import 'package:untitled/pages/login_screen.dart';

import 'package:untitled/pages/splach.dart';
import 'package:untitled/pages/user%20profile/profilescreen.dart';
final Map<String,WidgetBuilder> routes={
Splash.routename:(context) => Splash(),
loginscreen.routename:(context) => loginscreen(),
forgotPassword.routeName:(context) => forgotPassword(),
loginsuccessScreen.routename:(context)=>loginsuccessScreen(),
profileScr.routeName:(context)=>profileScr(),
accueil.routename:(context)=>accueil(),
};
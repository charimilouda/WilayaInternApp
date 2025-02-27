import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/custom_buttom_nav_bar.dart';
import 'package:untitled/enums.dart';
import 'package:untitled/pages/background.dart';
import 'package:untitled/pages/splach.dart';
import 'package:untitled/pages/user%20profile/Body22.dart';





class profileScr extends StatelessWidget{
  static String routeName ='/Profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: SizedBox(),
          title: Text ("Profile",
          style: TextStyle(color: kPrimaryColor),),
          backgroundColor: Colors.white,
          centerTitle: true
        ),
        body: Body22(),
        bottomNavigationBar: CustomBottomNavBar(
          selectmenu: //MenuState.home,
        MenuState.Profile),
    );
  }

}


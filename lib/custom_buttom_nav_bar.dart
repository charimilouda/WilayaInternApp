
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/enums.dart';
import 'package:untitled/pages/Splach.dart';
import 'package:untitled/pages/accueil/accueil.dart';
import 'package:untitled/pages/routs.dart';
import 'package:untitled/pages/user%20profile/profilescreen.dart';
class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key, required this.selectmenu,
  }) : super(key: key);
final MenuState selectmenu;
  @override
  Widget build(BuildContext context) {
    final Color inActiveIconcolor=Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: 
      BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow:[ BoxShadow(offset: Offset(0,-15),
        blurRadius: 20,
         color: Color(0xFFDADADA).withOpacity(0.15)           )
        ],
        ),
      child:SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            IconButton(onPressed:()=>Navigator.push(
                context,
                MaterialPageRoute(builder:(context){return accueil();},),),
             icon: Icon (Icons.home),color: MenuState.home==selectmenu?kPrimaryColor:inActiveIconcolor,),
            IconButton(
              onPressed:()=>Navigator.push(
                context,
                MaterialPageRoute(builder:(context){return profileScr();},),)
             
               ,
             icon: Icon (
              Icons.person),
              color: MenuState.Profile==selectmenu?kPrimaryColor:inActiveIconcolor,)
          ]
        ),
      )
    );
  }
}
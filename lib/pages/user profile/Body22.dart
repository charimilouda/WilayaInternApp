import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/settigsscreen/SettingsScreen.dart';
import 'package:untitled/pages/sign%20up/sugn_upscreen.dart';
import 'package:untitled/pages/splach.dart';
import 'package:untitled/pages/user%20profile/aide.dart';
import 'package:untitled/pages/user%20profile/menu.dart';
import 'package:untitled/pages/user%20profile/moncompte.dart';
import 'package:untitled/pages/user%20profile/notification.dart';
import 'package:untitled/pages/user%20profile/profilePic.dart';

import '../../constants.dart';

class Body22 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePicture(),
        SizedBox(
          height: 20,
        ),
        profilemenu(
          icon: "assets/person.png",
          text:"Mon Compte",
          press:(){
            Navigator.push(context, MaterialPageRoute(
                    builder: (context){return moncompte();
                    }),
                    );
                 
          }),
          profilemenu(
          icon: "assets/Notif.png",
          text:"Notifications",
          press:(){
             Navigator.push(context, MaterialPageRoute(
                    builder: (context){return Notifications();
                    }),
                    );
          }),
          profilemenu(
          icon: "assets/sett.png",
          text:"Parametres",
          press:(){
             Navigator.push(context, MaterialPageRoute(
                    builder: (context){return settigsScreen();
                    }),
                    );
          }),
          profilemenu(
          icon: "assets/aided.png",
          text:"aide",
          press:(){ Navigator.push(context, MaterialPageRoute(
                    builder: (context){return aide();
                    }),
                    );}),
          profilemenu(
          icon: "assets/deconn.png",
          text:"Deconnecter",
          press:(){ Navigator.push(context, MaterialPageRoute(
                    builder: (context){return Splash();
                    }),
                    );})
      ],
    );
  }

}


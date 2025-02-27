import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/splach.dart';

class splash1 extends StatefulWidget {
  const splash1({Key? key}) : super(key: key);

  @override
  State<splash1> createState() => _splash1State();
}

class _splash1State extends State<splash1> {
void initState(){
  super.initState();
  Timer(Duration(seconds: 5),()=>      Navigator.push(context, MaterialPageRoute(
                  builder: (context){return Splash();})));
}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: kPrimarylightColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: kPrimarylightColor,
                        radius: 55.0,
                        child: Image.asset("assets/1234.png",height: size.height*0.20,),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)
                      ),
                      /*Text("YourIntern",style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 24,
                        fontWeight:FontWeight.bold),)*/
                  ]),
                )),
                Expanded(flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(backgroundColor: kPrimaryColor,valueColor: AlwaysStoppedAnimation(kPrimarylightColor),),
                      Padding(padding: EdgeInsets.only(top:20)
                      ),

                    ],
                  )),
            ],
          )
        ],
      ) ,
    );
  }
}

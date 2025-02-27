import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled/pages/admin/listview.dart';

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
           
             Container(
          
          height: 60,
          child: GestureDetector(
            onTap:  ()=>Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=> listview()),),
            child: ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(10),
              physics: NeverScrollableScrollPhysics(),
              children: [
                
                Row(
                  children: [
                    Text("Amina Labyad",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 240,),
                    Text("19:29",style: TextStyle(color: Colors.blue),),
                  ],
                ),
                
              ],
          
            ),
          ),

            ),
            Container(
          
          height: 60,
          decoration: BoxDecoration( ),
          
          child: GestureDetector(
            onTap:  ()=>Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=> listview()),),
            child: ListView(
              
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(10),
              physics: NeverScrollableScrollPhysics(),
              children: [
                Row(
                  children: [
                    Text("Chari Milouda",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 240,),
                    Text("17:50",style: TextStyle(color: Colors.blue)),
                  ],
                ),
                
          
              ],
          
            ),
          ),

            ),
              Container(
          
          height: 60,
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(10),
            physics: NeverScrollableScrollPhysics(),
            children: [
              
              Row(
                children: [
                  Text("Ahmed Dali",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 255,),
                  Text("13:09",style: TextStyle(color: Colors.blue),),
                ],
              ),
              
            ],

          ),

            ),
             Container(
          
          height: 60,
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(10),
            physics: NeverScrollableScrollPhysics(),
            children: [
              
              Row(
                children: [
                  Text("Hanae Hachmi",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 239,),
                  Text("09:17",style: TextStyle(color: Colors.blue),),
                ],
              ),
              
            ],

          ),

            ),
             Container(
          
          height: 60,
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(10),
            physics: NeverScrollableScrollPhysics(),
            children: [
              
              Row(
                children: [
                  Text("Nada Himri",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 259,),
                  Text("17 juil.",style: TextStyle(color: Colors.blue),),
                ],
              ),
              
            ],

          ),

            ),
             Container(
          
          height: 60,
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(10),
            physics: NeverScrollableScrollPhysics(),
            children: [
              
              Row(
                children: [
                  Text("Salma Assali",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 247,),
                  Text("17 juil.",style: TextStyle(color: Colors.blue),),
                ],
              ),
              
            ],

          ),

            ),
             Container(
          
          height: 60,
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(10),
            physics: NeverScrollableScrollPhysics(),
            children: [
              
              Row(
                children: [
                  Text("Amjad Touk",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 255,),
                  Text("17 juil.",style: TextStyle(color: Colors.blue),),
                ],
              ),
              
            ],

          ),

            ),
             Container(
          
          height: 60,
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(10),
            physics: NeverScrollableScrollPhysics(),
            children: [
              
              Row(
                children: [
                  Text("Abir Sabir",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 265,),
                  Text("16 juil.",style: TextStyle(color: Colors.blue),),
                ],
              ),
              
            ],

          ),

            ),
             Container(
          
          height: 60,
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(10),
            physics: NeverScrollableScrollPhysics(),
            children: [
              
              Row(
                children: [
                  Text("Ibrahim Sami",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 245,),
                  Text("14 juil.",style: TextStyle(color: Colors.blue),),
                ],
              ),
              
            ],

          ),

            ),
            
            

      ],
    );
  }
}
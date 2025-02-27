import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class body1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SizedBox(width: 40,);
    return Card(
      
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Column(
              children: [
                ...ListTile.divideTiles(color: Colors.grey,
                 tiles: [ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                  subtitle: Text("oj"),
                 )
                 ])
              ],
            )
          ],
        ),
      ),
    );
  }

}
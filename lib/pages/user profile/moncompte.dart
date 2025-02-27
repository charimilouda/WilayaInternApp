import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/user%20profile/body1.dart';

class moncompte extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimarylightColor,
        title: Text("Mon Compte"),
      ),
      body: body1(),
    );
  }

}
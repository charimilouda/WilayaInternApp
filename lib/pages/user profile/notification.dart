import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class Notifications extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimarylightColor,
        title: Text("Notification"),
      ),
      //body: buildDarkMode(),
    );
  }

}
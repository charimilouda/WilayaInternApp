import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

import 'package:untitled/pages/text_field_container.dart';

class namefield extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged <String> onChanged;
  const namefield({
    Key? key,
     required this.hintText,
       this.icon =Icons.person,
       required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return textFailedcontainer(
     child:TextField(
      onChanged: onChanged,
         decoration: InputDecoration(
           icon: Icon(Icons.person,color:kPrimaryColor,),
           
           floatingLabelBehavior: FloatingLabelBehavior.always,
           hintText: hintText,
           
           border: InputBorder.none,
         ),
    )
    );
  }
}


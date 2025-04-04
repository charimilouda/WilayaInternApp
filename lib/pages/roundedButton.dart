import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

import 'package:untitled/pages/body.dart';

class roundedButton extends StatelessWidget {
  final String text;
  final  Function() press;
  final Color color,textColor;
  const roundedButton({
    Key? key,
     required this.text,
       required this.press,
       this.color=kPrimaryColor,
       this.textColor=Colors.white,
    
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width*0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical:17, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor,)
        )
        ),
      ),
    );
  }
}


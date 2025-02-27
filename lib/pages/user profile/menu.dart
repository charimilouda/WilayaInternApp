import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class profilemenu extends StatelessWidget {
  const profilemenu({
    Key? key, 
     required this.text,
      required this.icon,
      required this.press,
  }) : super(key: key);
final String text,icon;
final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color.fromARGB(255, 191, 223, 250),
        onPressed: press,
       child: Row(
        children: [
          Image.asset(icon,
          width: 22,
          color: Colors.red,),
            SizedBox(width: 20,),
            Expanded(child: Text(text,
            style: Theme.of(context).textTheme.bodyText1,)
            ),
            Icon(Icons.arrow_forward_ios,color: kPrimaryColor,)
        ],
       )),
    );
  }
}


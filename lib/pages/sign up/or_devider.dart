import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical:size.height*0.02),
      width: size.width*0.8,
      child: Row(
        children: <Widget>[
            buildDivider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("OU",
                style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.w600),),
              ),
              buildDivider(),
        ],
      ),
    );
  }
  }

class buildDivider extends StatelessWidget {
  const buildDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:Divider(color: Color.fromARGB(255, 33, 90, 164),)
      );
  }
}


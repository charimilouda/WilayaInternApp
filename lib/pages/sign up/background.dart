import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
class background extends StatelessWidget {
  final Widget child;
  const background({
    Key? key, 
    required this.child,
   
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      height: size.height,
    width: double.infinity,
    child: Stack(
      alignment: Alignment.center,
      children:<Widget> [
        Positioned(
          right: 0,
          bottom: 0,
          
          child: 
          Image.asset(
            "assets/login_bottom.png",width: size.width*0.3,color: Color.fromARGB(255, 214, 182, 24),
          ),
      ),
     /* Positioned(
          bottom: 0,
          left: 0,
          child: 
          Image.asset(
            "assets/3.png",width: size.width*0.25,color: kPrimarylightColor,
          ),
      ),*/
      child,
      ]
      )
    );
  }
}
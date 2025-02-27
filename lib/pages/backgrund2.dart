import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class background2 extends StatelessWidget {
  final Widget child;
  const background2({
    Key? key,
     required this.child,

  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
    width: double.infinity,
    child: Stack(
      alignment: Alignment.center,
      children:<Widget> [
        /*Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: 
          Image.asset(
            "assets/7.png",width: size.width*0.8,color: Color (0xFFD3E7EE),
          ),
      ),*/
      /*Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            "assets/9.png",width: size.width*0.8
          ),
      ),*/
      Positioned(
          bottom: 0,
          
          right: 0,
          child: Image.asset(
            "assets/4.png",width: size.width*0.3,color: Color.fromARGB(255, 17, 57, 118)
          ),
      ),
        child,
      ],
    ),

    
    );
  }
}

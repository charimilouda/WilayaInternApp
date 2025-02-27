
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class background extends StatelessWidget {
  final Widget child;
  const background({
    Key? key, required this.child,
    
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
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/5.png",width: size.width*0.8,color:Color(0xFF015C92)
            ),
        ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/6.png",width:size.width*0.3,color: Color.fromARGB(255, 255, 213, 0),
            ),
            
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/2.png",width:size.width*0.3,color:kPrimarylightColor ,
            ),
          ),
          child,
        ],
      ),

    );
  }
}
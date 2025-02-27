import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
class rememberme extends StatefulWidget{
  @override
  State<rememberme> createState() => _remembermeState();
}

class _remembermeState extends State<rememberme> {
  bool remember=false;

  @override
  Widget build(BuildContext context) {
    return Row(
                  children: [
                    Checkbox(
                      value: remember,
                      activeColor: Color(0xffD1B834),
                      onChanged: (value){
                        setState((){
                          remember=value!;
                        });
                      }
                      ),
                      Text("Se souvenir de moi"),
                      Spacer(),
                      
                  ],
                );
    
  }
}
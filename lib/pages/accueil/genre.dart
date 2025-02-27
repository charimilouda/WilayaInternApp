import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listed extends StatefulWidget{
  @override
  State<listed> createState() => _listedState();
}

class _listedState extends State<listed> {
  dynamic selectedSExe ="homme";

  @override
  Widget build(BuildContext context) {
   return DropdownButton(
    hint: Text("Genre"),
    items: ["Homme","Femme"].map((e) => 
   DropdownMenuItem(child: Text("$e"),value: e,)).toList(), 
   onChanged: (ok){
    setState((){selectedSExe = ok;});
   },value: selectedSExe);
  }
}
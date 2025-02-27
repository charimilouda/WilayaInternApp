import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class date extends StatefulWidget{
  @override
  State<date> createState() => _dateState();
}

class _dateState extends State<date> {
  DateTime ladate =DateTime(2022,12,24);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        alignment: Alignment.centerLeft,
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
        side: MaterialStateProperty.all(const BorderSide(color:kPrimaryColor)),
        minimumSize: MaterialStateProperty.all(const Size(400,40)),
        padding: MaterialStateProperty.all(const EdgeInsets.all(18)),
        backgroundColor:MaterialStateProperty.all(Colors.white)),
        
      onPressed: ()async{
      DateTime? newDate =await showDatePicker(context: context, initialDate: ladate, firstDate: DateTime(1900),
       lastDate: DateTime.now());
       if (newDate==null)return;
       setState(() => ladate =newDate);
    },
     child: Text("Date de naissance  ${ladate.year}/${ladate.month}/${ladate.day}",style: TextStyle(color: Colors.black87,fontSize: 16),textAlign: TextAlign.left,),
     
     );
  }
}
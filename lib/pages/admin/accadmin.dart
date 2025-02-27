import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/admin/body.dart';


class accadmin extends StatefulWidget {
  const accadmin({Key? key}) : super(key: key);

  @override
  State<accadmin> createState() => _accadminState();
}

class _accadminState extends State<accadmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimarylightColor,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,),
          tooltip: "Chercher",),
          IconButton(onPressed: (){}, icon: Icon(Icons.sort,color: Colors.white,),
          tooltip: "Trier par",),
        ],
        ),
      body:body(),
    );
  }
}
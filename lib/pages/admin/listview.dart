import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled/pages/admin/roundedbutt.dart';
import 'package:untitled/pages/roundedButton.dart';

class listview extends StatefulWidget {
  const listview({Key? key}) : super(key: key);

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  children: [
                    Text("Nom complet :",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    //SizedBox(width: 70,),
                    Text(" Chari Milouda",style: TextStyle(color: Colors.black),)
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  children: [
                    Text("Genre : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    //SizedBox(width: 70,),
                    Text(" Femme",style: TextStyle(color: Colors.black),)
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  children: [
                    Text("Date de naissance : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    
                    Text(" 07/12/2002",style: TextStyle(color: Colors.black),)
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  children: [
                    Text("Etablissement : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    
                    Text("Ecole Supérieure de Technologie Oujda",style: TextStyle(color: Colors.black),)
                  ],
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  children: [
                    Text("Niveau d'études : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                   
                    Text(" Bac+1",style: TextStyle(color: Colors.black),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  children: [
                    Text("Durée de stage : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                   
                    Text(" 1 mois",style: TextStyle(color: Colors.black),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  children: [
                    Text("Votre CV : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    SizedBox(width: 250,),
                   Icon(Icons.download),
                    
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  children: [
                    Text("Votre convention de stage : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                   SizedBox(width: 140,),
                   Icon(Icons.download),
                    
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  children: [
                    Text("Attestation d'assurances : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                   SizedBox(width: 150,),
                   Icon(Icons.download),
                    
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  children: [
                    Text("Demande manuscrite : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                   SizedBox(width: 170,),
                   Icon(Icons.download),
                    
                  ],
                ),
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  roundedButton2(text: "ACCEPTER", press:(){}),
                  SizedBox(width: 30,),
                  roundedButton2(text: "REFUSER", press:(){}),
                ],
              ),
            )
          ],
          
        ),
      ),
    );
  }
}

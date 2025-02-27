import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/pages/accueil/attestation_assurance.dart';
import 'package:untitled/pages/accueil/body.dart';
import 'package:untitled/pages/accueil/cv.dart';
import 'package:untitled/pages/accueil/demandedestage.dart';
import 'package:untitled/pages/accueil/lettredemotiv.dart';
import 'package:untitled/pages/accueil/successed.dart';
import 'package:untitled/pages/accueil/theme.dart';
import 'package:untitled/pages/roundedButton.dart';

class homePage extends State<body> {
  TextEditingController DateInput = TextEditingController();
  final List<String> items=
  [
     '    Femme',
     '    Homme'
  ];
  final List<String> items2=
  [
     '    Bac+1',
     '    Bac+2',
     '    Bac+3',
     '    Bac+4',
     '    Bac+5',
     
  ];
  final List<String> items3=
  [
     '    1 mois',
     '    2 mois',
     '    3 mois',
     '    4 mois',
     '    5 mois',
     '    6 mois',
     '    plus de 6 mois',
  ];
  final List<String> items4=
  [
     '    1 mois',
     '    2 mois',
     '    3 mois',
     '    4 mois',
     '    5 mois',
     '    6 mois',
     '    plus de 6 mois',
  ];
   String? selectedValue;
   String? selectedValue2;
   String? selectedValue3;
    String? selectedValue4;
    int currentStep=0;
    bool isCompleted =false;
  @override
  void initState(){DateInput.text="";
  super.initState();
  }
  // ignore: dead_code, dead_code
  Widget build(BuildContext context) {

    return Scaffold(
      body: isCompleted?successScreen():
      Theme(

        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(primary: kPrimaryColor)
        ),
        child: Stepper(
        type: StepperType.horizontal,
          steps:getSteps(),
          currentStep: currentStep,
          onStepContinue: () { 
            final isLastStep =currentStep ==getSteps().length-1;
          if(isLastStep)
          {
            setState(() =>
               isCompleted =true
            );
            print("completed");
            //sen data to server
          }else{
          setState(() {
      
            currentStep+=1;
          });};},
          onStepTapped: (step) => setState(() {
            currentStep=step;
          }),
          onStepCancel: 
          currentStep==0?null:() => setState(() {
            currentStep-=1;
          }),
          
          controlsBuilder: ((context, details)
          
           {
            final  isLastStep =currentStep ==getSteps().length-1;
            return Container(
margin: EdgeInsets.only(top: 2),
child: Row(
  children: [
    Expanded(child: ElevatedButton(child: Text(isLastStep?"Confirmer":"Suivant"),onPressed: details.onStepContinue)
    ),
    const SizedBox(width: 12,),
    if(currentStep!=0)
    Expanded(child:  ElevatedButton(child: Text("Retour"),onPressed: details.onStepCancel)
    )
  ],
),
          );}
          )
          ),
      )
      
    );
    
  }
  
  List<Step> getSteps() =>[
      Step(
        state: currentStep>0 ?StepState.complete:StepState.indexed,
        isActive: currentStep>=0,
        title: Text("Etape 1"),
       content: Column(
        children: [
          SafeArea(
            child: Container(
              
              child: Form(
                child: Column(
                children: [
                  SizedBox(height: 12.2),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: TextField(
                      
                      decoration:themehelper().textInputdecoration(
                        "Nom complet",
                      
                      ),
                    ),
                  ),



                  SizedBox(height: 1),

                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        DropdownButtonHideUnderline(child: 
                        DropdownButton2(
                          hint:Text('   Genre',
                        ),
                        items: items.map((item) => DropdownMenuItem<String>(
                          child: Text(item,),
                          value: item,)).toList(),
                          value: selectedValue,
                          onChanged: (value){
                            setState(() {
                              
                              selectedValue=value as String;
                            });
                          },
                          buttonWidth: 375,
                          buttonDecoration:BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.zero),
                            border: Border.all(color: kPrimaryColor)
                            )
                        )
                        ),
                      ],
                    )
                  ),



                  SizedBox(height: 1),


                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: TextField(  
                          controller: DateInput,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.calendar_today,),
                            labelText: "  Date de naissance",
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.vertical(),borderSide: BorderSide(color: Color.fromARGB(255, 10, 54, 90)),
    
                            ),
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.vertical(),borderSide: BorderSide(color: Color.fromARGB(255, 35, 90, 135)),
    
                            ),
errorBorder: OutlineInputBorder(borderRadius: BorderRadius.vertical(),borderSide: BorderSide(color: Colors.red),
    
),
focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.vertical(),borderSide: BorderSide(color: Colors.red),
    
),

                          ),
                          readOnly:true,
                          onTap:()async{
                            DateTime?pickedDate=await showDatePicker(
                              context: context,
                               initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                 lastDate: DateTime(2100),);
                                 if(pickedDate !=null){
                                  print(pickedDate);
                                 }
                                 String formattedDate=DateFormat('yyyy-MM-dd').format(pickedDate!);
                                 print(formattedDate);
                                 setState(() {
                                   
                                   DateInput.text=formattedDate;
                                 });
                          }
                          
                        ),
                  ),
                  SizedBox(height:0),




                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: TextField(
                      
                      decoration:themehelper().textInputdecoration(
                        "Etablissement",
                      
                      ),
                    ),
                  ),


                  SizedBox(height: 0),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child:  Column(
                      children: [
                        DropdownButtonHideUnderline(child: 
                        DropdownButton2(
                          
                          hint:Text('   Niveau d\'Etude',
                        ),
                        items: items2.map((item) => DropdownMenuItem<String>(
                          child: Text(item,),
                          value: item,)).toList(),
                          value: selectedValue2,
                          onChanged: (value){
                            setState(() {
                              
                              selectedValue2=value as String;
                            });
                          },
                          buttonWidth: 375,
                          buttonDecoration:BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.zero),
                            border: Border.all(color: kPrimaryColor)
                            )
                        )
                        ),
                      ],
                    )
                  ),


















                  SizedBox(height: 0),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        DropdownButtonHideUnderline(child: 
                        DropdownButton2(
                          hint:Text('  Durée de stage',
                        ),
                        items: items3.map((item) => DropdownMenuItem<String>(
                          child: Text(item,),
                          value: item,)).toList(),
                          value: selectedValue3,
                          onChanged: (value){
                            setState(() {
                              
                              selectedValue3=value as String;
                            });
                          },
                          buttonWidth: 375,
                          buttonDecoration:BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.zero),
                            border: Border.all(color: kPrimaryColor)
                            )
                        )
                        ),
                      ],
                    )
                  ),
                  
                  /*roundedButton(text: "Soumettre", press: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){return successScreen();}));
                  })*/
                ],
              )
              )
              )
              )
        ],
       )),
       Step(
        state: currentStep>1 ?StepState.complete:StepState.indexed,
        isActive: currentStep>=1,
        title: Text("Etape 2"),
       content: Column(
        children: [
          
Padding(
                    padding: const EdgeInsets.all(9.0),
                    child:attachingCv()
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child:attachingDS()
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child:attachingAA()
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child:attachinLDM()
                  ),
                  
        ],
       ))
    ];
  
}

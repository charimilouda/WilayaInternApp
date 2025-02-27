import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:untitled/constants.dart';

//import 'package:pin_code_text_field/pin_code_text_field.dart';

class customPinCode extends StatelessWidget {
  const customPinCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: PinCodeTextField(
        keyboardType: TextInputType.number,
          maxLength: 4,
        onTextChanged:(value){},
        pinBoxBorderWidth: 2,
        pinBoxRadius: 10,
        pinBoxHeight: 70,
        pinBoxWidth: 70,
        //pinBoxColor: kPrimaryColor,
        defaultBorderColor: Colors.red,
        highlightColor: Colors.red,
        highlightPinBoxColor: Color.fromARGB(255, 227, 227, 227),
      ),
    )
      
    ;
  }
}
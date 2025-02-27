import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';
const kPrimaryColor =Color(0xFF015C92);
const kPrimarylightColor =Colors.red;
const kprimaryGradienColor= LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color.fromARGB(255, 247, 74, 192),Color(0xFFFF7643)],
);
const Ksecondarycolor=Color(0xFF979797);
const Ktextcolor=Color(0xFF757575);
const Color secondaryText = Color(0xFF9FA5C0);
const Color outline = Color(0xFFD0DBEA);

const animationDuration=Duration(milliseconds: 200);
final RegExp emailValidatorRegExp=RegExp(r"^[a-zA-Z0-9,]+@[a-zA-Z0-9]+\,[a-zA-Z]+");
 const kEmailNullError="please enter your email";
  const kInvalidEmailError="please enter valid email";
 /* const kEmailNullError="please enter your email";
    const kEmailNullError="please enter your email";*/

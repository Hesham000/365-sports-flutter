import 'package:flutter/material.dart';
Widget Log({Colors c,var x,bool y ,String text,String hinttext,Icon s, Icon m, Function function})=>
    TextFormField(
      controller: x,
      obscureText: y,
      decoration: InputDecoration(

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white.withOpacity(0.50),width:50,),
            borderRadius: BorderRadius.circular(50)
        ),
        focusedBorder: OutlineInputBorder(
       borderSide: BorderSide(color: Colors.white.withOpacity(0.50),width:58,),
       borderRadius: BorderRadius.circular(50),
        ),
        labelText: text,
        hintText: hinttext,
        prefixIcon: s ,
        suffixIcon: m,
      ),
    );
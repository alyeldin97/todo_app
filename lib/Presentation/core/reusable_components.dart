//Navigators
import 'package:flutter/material.dart';

void navigateTo(context,screen){
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>screen));
}

void navigateReplacement(context,screen){
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>screen));
}

void navigateAndFinish(context,screen){
Navigator.of(context).pushAndRemoveUntil(screen, (route) => false);
}
//SizedBox Height
SizedBox height(h){
  return SizedBox(height: h,);
}
//SizedBox Width
SizedBox width(w){
  return SizedBox(width: w,);
}

//TextFormField
Widget buildTextFormField(w,{hint,prefixIcon,suffixIcon,validate,onChanged,controller}){

  return Container(
    
    height: w*0.18,
    child: TextFormField(
      controller: controller,
      validator: validate,
      onChanged: onChanged,
      decoration: InputDecoration(
        focusedBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(w*0.02),
          borderSide: BorderSide(color: Colors.amber),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(w*0.02),
        ),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        prefixIcon: Icon(prefixIcon,color: Colors.grey,),
        suffixIcon: suffixIcon,
        fillColor: Colors.grey[200],
        
      ),
    ),
  );
}
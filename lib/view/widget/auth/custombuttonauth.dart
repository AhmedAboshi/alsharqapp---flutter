import 'package:alsharqapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtomAuth extends StatelessWidget {
  const CustomButtomAuth({super.key, required this.text, this.onPressed});
final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
     
      margin:  const EdgeInsets.only(top: 15),
      child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const  EdgeInsets.symmetric(vertical: 15),
        onPressed:onPressed,
        
         color: AppcolorApp.primaryColor,
          textColor: Colors.white,
           child: Text(text,), 
           ),
    ); 
  }
}
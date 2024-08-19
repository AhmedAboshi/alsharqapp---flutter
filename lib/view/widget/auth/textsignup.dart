import 'package:alsharqapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  const CustomTextSignUpOrSignIn({super.key, required this.textone, required this.texttwo, this.onTap});
final String textone;
  final String texttwo;
  final void Function ()? onTap;
  @override
  Widget build(BuildContext context) {
    return   Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(textone),
    InkWell(
      onTap: onTap,
      child: Text(
        texttwo,
         style:  const TextStyle(color: AppcolorApp.primaryColor,fontWeight: FontWeight.bold),),)
  ],
    );
  }
}
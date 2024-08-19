import 'package:alsharqapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextTitleAuth extends StatelessWidget {
  const CustomTextTitleAuth({super.key, required this.text});
final String text;
  

  @override
  Widget build(BuildContext context) {
    return  Text(
            "10".tr,
             textAlign: TextAlign.center,
   // ignore: deprecated_member_use
   style: Theme.of(context).textTheme.headline2!.copyWith(color: AppcolorApp.black , 
   )   
    );
          
  }
  }
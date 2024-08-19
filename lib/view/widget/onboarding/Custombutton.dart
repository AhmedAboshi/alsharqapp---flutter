// ignore: duplicate_ignore

// ignore_for_file: file_names

import 'package:alsharqapp/Controller/onboarding_controller.dart';
import 'package:alsharqapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CastouButton extends GetView<onbordingcntrollerlerImp> {
  const CastouButton({super.key});

  @override
  Widget build(BuildContext context) {
      Get.put(onbordingcntrollerlerImp());

    return 
Container(
            margin: const EdgeInsets.only(bottom: 30),
            height: 40,
            color: AppcolorApp.primaryColor,child: MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 4),
            textColor: Colors.white,
            onPressed: (){
                       controller.next();
            },

             child:   Text("8".tr),
             ),
             );
  }
}
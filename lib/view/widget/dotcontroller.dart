

import 'package:alsharqapp/Controller/onboarding_controller.dart';
import 'package:alsharqapp/core/constant/color.dart';
import 'package:alsharqapp/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/onboarding.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>onboarding());
    return GetBuilder<onbordingcntrollerlerImp>(
      builder: ((controller) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
         ... List.generate(
          onboardinglist.length,
           (index) => AnimatedContainer(
            margin: const EdgeInsets.all(5),
            duration: const Duration(microseconds: 900),
width: controller.currentPage== index ? 20:5,
height: 6,
decoration:  BoxDecoration(
color: AppcolorApp.primaryColor,
borderRadius: BorderRadius.circular(10),
),

            ))
            ]
          )));

  }
}
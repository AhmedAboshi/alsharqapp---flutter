import 'package:alsharqapp/core/Services/Services.dart';

import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/data/datasource/static/static.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
abstract class onbordingcntroller extends GetxController {
  next();
  onPageChanged(int index);
}

// ignore: camel_case_types
class onbordingcntrollerlerImp extends onbordingcntroller {

  late PageController pageController;

  int currentPage =  0;

  MyServices myServices =Get.find();
  @override
  next() {
    currentPage++;
   
    if (currentPage > onboardinglist.length - 1) {
      myServices.sharedPreferences.setString("step", "1");
      myServices.sharedPreferences.setString("username", "users_name") ;
         myServices.sharedPreferences.setString("userphone", "users_phone") ;
pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
       Get.offAllNamed(AppRoute.Login) ; 
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
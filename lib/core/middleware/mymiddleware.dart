import 'package:alsharqapp/core/Services/Services.dart';
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware {

  @override
   int? get priority => 1;
   MyServices myServices =Get.find();
   @override
  RouteSettings? redirect(String? route) {

      if(myServices.sharedPreferences.getString("step")=="2"){
      return  const RouteSettings(name: AppRoute.homepashe);
    }

    if(myServices.sharedPreferences.getString("step")=="1"){
      return  const RouteSettings(name: AppRoute.Login);
    }
    return null;
    
  }
}
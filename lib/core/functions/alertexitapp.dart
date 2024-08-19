import 'dart:io';

import 'package:alsharqapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "53".tr,
      titleStyle:const  TextStyle(color: AppcolorApp.primaryColor , fontWeight: FontWeight.bold),
      middleText: "54".tr,
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppcolorApp.primaryColor)),
            onPressed: () {
              exit(0);
            },
            child: Text("55".tr)),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppcolorApp.primaryColor)),
            onPressed: () {
              Get.back();
            },
            child: Text("56".tr))
      ]);
  return Future.value(true);
}
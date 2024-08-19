

import 'dart:io';

import 'package:alsharqapp/Controller/HomePashe_controller.dart';
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/view/widget/home/custombottomappbarhome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePashe extends StatelessWidget {
  const HomePashe({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePasheControllerImp());
    return GetBuilder<HomePasheControllerImp>(builder: ((controller) => Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.toNamed(AppRoute.cart);
      }, child: const Icon(Icons.shopping_basket_outlined),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomAppBarHome(),
     
      
     body: WillPopScope(child: controller.listPage.elementAt(controller.currentpage), 
     onWillPop: (){
      Get.defaultDialog(title: "wrning" ,
      titleStyle:  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
       middleText: "do you want Exit to the app?" ,
       
       onCancel: () {},
       cancelTextColor: Colors.blue,
       confirmTextColor: Colors.white,
       buttonColor: Colors.blue,
       onConfirm: (){
        exit(0);
      });
      return Future.value(false);
     }),
    ))) ;
  }
}
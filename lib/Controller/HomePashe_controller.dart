

import 'package:alsharqapp/view/screen/auth/homeScreen.dart';
import 'package:alsharqapp/view/screen/notification.dart';
import 'package:alsharqapp/view/screen/offers.dart';
import 'package:alsharqapp/view/screen/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

 abstract class HomePasheController extends GetxController{

   changePage(int currentpage);

}
class HomePasheControllerImp extends HomePasheController{
  int currentpage = 0;
   List<Widget> listPage =[
    const homeScreen(),
    const NotificationView(),
    
    const  OffersView(),
     
      Settings(),
   ];
   List bottomappbar = [
     {
      "title" : "79".tr,
      "icon" : Icons.home,
     },
     {
      "title" : "80".tr,
      "icon" : Icons.notifications_active_outlined,
     },
     {
      "title" : "81".tr,
      "icon" : Icons.production_quantity_limits,
     },
     {
      "title" : "82".tr,
      "icon" : Icons.settings,
     },
   ];
  @override
  // ignore: avoid_renaming_method_parameters
  changePage(int i) {
    currentpage =i;
    update();
  }

}
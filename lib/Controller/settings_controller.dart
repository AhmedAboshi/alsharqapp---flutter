import 'package:alsharqapp/core/constant/routes.dart';
 import 'package:alsharqapp/core/Services/Services.dart';
import 'package:alsharqapp/data/model/usersmodel.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController{
 late bool isvalue ;
 late final UsersModel usersModel;
  MyServices myServices =Get.find();

  logout(){
    String usersid = myServices.sharedPreferences.getString("id")!;
     FirebaseMessaging.instance.unsubscribeFromTopic("users");
           FirebaseMessaging.instance.subscribeToTopic("users${usersid}");
myServices.sharedPreferences.clear();
Get.offAllNamed(AppRoute.Login);
  }

}
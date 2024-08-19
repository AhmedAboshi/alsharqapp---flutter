
import 'package:alsharqapp/core/constant/apptheme.dart';
import 'package:alsharqapp/core/functions/fcmconfig.dart';
import 'package:alsharqapp/main.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import '../Services/Services.dart';

class LocaleController extends GetxController {

Locale? language ;  

MyServices myServices = Get.find()  ;
ThemeData appTheme =themeEnglish;

changeLang(String langcode){
 Locale locale = Locale(langcode) ; 
 

 myServices.sharedPreferences.setString("lang", langcode) ; 
  appTheme=langcode == "ar" ? themeArabic:themeEnglish;

 Get.updateLocale(locale) ; 
 Get.changeTheme(appTheme);
}
 requestPerLocation() async{
   bool serviceEnabled;
  LocationPermission permission;
serviceEnabled = await Geolocator.isLocationServiceEnabled();
 if (!serviceEnabled) {
    
    return Get.snackbar("تنبية", "الرجاء تشغيل خدمة تحديد الموقع");
  }
  permission = await Geolocator.checkPermission();
   if (permission == LocationPermission.denied) {
     permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
            return Get.snackbar("تنبية", "الرجاء اعطاء صلاحية الموقع لتطبيق");

      }
   }
    if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately. 
    return Get.snackbar("تنبية", "لايمكن استعمال التطبيق من غير تفعيل خدمة الموقع");
  } 
 }

@override
  void onInit() {
    requestPermissionNotification();
    fcmconfig();
   requestPerLocation();
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang") ;  
    if (sharedPrefLang == "ar"){
      language = const Locale("ar")  ;
      appTheme=themeArabic;
    }else if (sharedPrefLang == "en"){
      language = const Locale("en")  ;
      appTheme=themeEnglish;
      
    }else {
      language = Locale(Get.deviceLocale!.languageCode) ; 
    }
    super.onInit();
  }


}

class ProviderData extends ChangeNotifier{
//ThemeData _themeData = darkMode ? ThemeData.dark() : ThemeData.light();
getTheme(){
 // return _themeData ;
}

setTheme(ThemeData theme){
  //_themeData = theme;
  notifyListeners();
}

}


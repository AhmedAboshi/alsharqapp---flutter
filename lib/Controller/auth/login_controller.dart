import 'package:alsharqapp/core/Services/Services.dart';
import 'package:alsharqapp/core/functions/handingdatacontroller.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/datasource/remote/auth/login.dart';
import 'package:alsharqapp/data/model/usersmodel.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find()); 
List<UsersModel> data = [];

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;

  bool isshowpassword = true;
 
   MyServices myServices = Get.find();

  StatusRequest statusRequest = StatusRequest.none;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postdata(email.text, password.text);
      // ignore: avoid_print
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
         // data.addAll(response['data']);
          myServices.sharedPreferences.setString("id", response['data']['users_id']) ;
          String usersid = myServices.sharedPreferences.getString("id")!;
          myServices.sharedPreferences.setString("username".tr, response['data']['users_name']) ;
         myServices.sharedPreferences.setString("usersemail", response['data']['users_email']) ;
                  myServices.sharedPreferences.setString("userphone", response['data']['users_phone']) ;
 myServices.sharedPreferences.setString("imageuser", response['data']['users_image']) ;
         myServices.sharedPreferences.setString("step", "2");
          FirebaseMessaging.instance.subscribeToTopic("users");
           FirebaseMessaging.instance.subscribeToTopic("users${usersid}");
          Get.offNamed(AppRoute.homepashe);
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: "Email Or Password Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.SignUp);
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
     print(value);
     String? token = value;
    });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
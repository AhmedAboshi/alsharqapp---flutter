import 'dart:io';

import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/core/functions/handingdatacontroller.dart';
import 'package:alsharqapp/core/functions/uploadfile.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/datasource/remote/auth/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  StatusRequest statusRequest = StatusRequest.none;
   
   
  SignupData signupData = SignupData(Get.find());


 File? file  ;
chooseImageGallery() async{
 file = await fileUploadGallery(true);
 update();
}
chooseImageCamera()async{
  file = await imageUploadCamera();
  update();
}

showoptionImage(){

  showModelBottomSheet(chooseImageCamera ,chooseImageGallery);
}
  List data = [];

  @override
  signUp() async {
      
    
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
            update();
 Map data ={
      "username" : username.text ,
      "password" : password.text, 
      "email" : email.text ,
      "phone" : phone.text,
    };
      var response = await signupData.postdate(
        data , file!
          );
      // ignore: avoid_print
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
    //data.addAll(response['data']);
          Get.offNamed(AppRoute.verifycodesignup , arguments: {
             "email": email.text
          }
          );
        } else {
          Get.defaultDialog(title: "ُWarning" , middleText: "Phone Number Or Email Already Exists") ; 
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.Login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}


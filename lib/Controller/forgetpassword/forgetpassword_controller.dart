import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/core/functions/handingdatacontroller.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/datasource/remote/forgetpassword/checkemail.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail(); 
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  
  CheckEmailData checkEmailData  = CheckEmailData(Get.find()) ; 

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  
  StatusRequest statusRequest  = StatusRequest.none ;  

  late TextEditingController email;

  @override
  checkemail() async  {
    if (formstate.currentState!.validate()){
       statusRequest = StatusRequest.loading; 
      update() ; 
      var response = await checkEmailData.postdate(email.text);
      // ignore: avoid_print
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.verifycode , arguments: {
            "email" : email.text
          });
        } else {
          Get.defaultDialog(title: "ُWarning" , middleText: "Email Not Found"); 
         
         
        }
      }
      update();
    }
  }

 
  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

}
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/core/functions/handingdatacontroller.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/datasource/remote/auth/verfiycodesignup.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verfiyCodeSignUp);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerfiyCodeSignUpData verfiyCodeSignUpData = VerfiyCodeSignUpData(Get.find());
 
  String? email;

  StatusRequest? statusRequest=StatusRequest.none;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp( verfiyCodeSignUp) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verfiyCodeSignUpData.postdate(email!, verfiyCodeSignUp); 
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") { 
        Get.offNamed(AppRoute.SuccessSignUp);
      } else {
        Get.defaultDialog(
            title: "ُWarning",
            middleText: "Verify Code Not Correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email =Get.arguments['email'];
    super.onInit();
  }
  reSend(){
     verfiyCodeSignUpData.resendData(email!);
  }
}
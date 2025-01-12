
import 'package:alsharqapp/Controller/auth/verfiycodesignup_controller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:alsharqapp/core/constant/color.dart';
import 'package:alsharqapp/view/widget/auth/customtextbodyauth.dart';
import 'package:alsharqapp/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';


 


// ignore: camel_case_types
class VerfiyCodeSignUp extends StatelessWidget {
 const  VerfiyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
        Get.put(VerifyCodeSignUpControllerImp ());
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppcolorApp.backgroundcolor,
        elevation: 0.0,
        // ignore: deprecated_member_use
        title:  Text('Verificetion Code' , style: Theme.of(context).textTheme.headline1!.copyWith(color: AppcolorApp.qrey),
      ),

      ),
      body: GetBuilder<VerifyCodeSignUpControllerImp>(builder: (controller) => 
      HandlingDataRequest(statusRequest:controller.statusRequest! , widget:
      Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Check code"),
          const SizedBox(height: 10),
           customtextbodyauth(
              text: "Please Enter The Digit Code Sent To ${controller.email}"),
          const SizedBox(height: 15),
          OtpTextField(
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: const Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
               controller.goToSuccessSignUp(verificationCode);
            }, // end onSubmit
          ),
          const SizedBox(height: 40),
           InkWell(
            onTap: () {
              controller.reSend();
            },
            child: const Center(  child: Text("Resend" , style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),)),
          ),
        ]),
      ),)
      
      ));
    
  }
}
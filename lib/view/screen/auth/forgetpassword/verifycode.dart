
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:alsharqapp/core/constant/color.dart';
import 'package:alsharqapp/view/widget/auth/customtextbodyauth.dart';
import 'package:alsharqapp/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../../Controller/forgetpassword/verifycode_controller.dart';

// ignore: camel_case_types
class verifycode extends StatelessWidget {
 const  verifycode({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(VerifyCodeControllerImp ());
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppcolorApp.backgroundcolor,
        elevation: 0.0,
        // ignore: deprecated_member_use
        title:  Text('Verificetion Code' , style: Theme.of(context).textTheme.headline1!.copyWith(color: AppcolorApp.qrey),
      ),

      ),
      body: GetBuilder<VerifyCodeControllerImp>(builder: (controller) => 
      HandlingDataRequest(statusRequest:controller.statusRequest ! , widget:
     Container(
        padding:  const  EdgeInsets.symmetric(vertical: 15 , horizontal: 35),
        child: ListView(children:   [
       
            const SizedBox(height: 20),
         const  CustomTextTitleAuth(text: "check Code",),
          const SizedBox(height: 10),
      const  customtextbodyauth(text: "Please Enter The Digit Code Sent To",),
        const   SizedBox(height: 65),

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
        controller.goToResetPassword(verificationCode) ;
                },
          ),
         



  
        ]
        )
      )
      )
      ,
      )
      );
   }
  }

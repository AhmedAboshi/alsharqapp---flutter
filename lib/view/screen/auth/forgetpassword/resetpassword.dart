
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:alsharqapp/core/constant/color.dart';
import 'package:alsharqapp/core/functions/validinput.dart';
import 'package:alsharqapp/view/widget/auth/custombuttonauth.dart';
import 'package:alsharqapp/view/widget/auth/customtextbodyauth.dart';
import 'package:alsharqapp/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Controller/forgetpassword/resetpassword_controller.dart';


// ignore: camel_case_types
class resetPassword extends StatelessWidget {
 const  resetPassword({super.key});

  @override
  Widget build(BuildContext context) {

    Get.put(ResetPasswordControllerImp());
    
   
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppcolorApp.backgroundcolor,
        elevation: 0.0,
        // ignore: deprecated_member_use
        title:  Text('30'.tr , style: Theme.of(context).textTheme.headline1!.copyWith(color: AppcolorApp.qrey),
      ),

      ),
      body: GetBuilder<ResetPasswordControllerImp>(builder:
       (controller) => 
      HandlingDataRequest(statusRequest:controller.statusRequest , widget:
        Container(
        padding:  const  EdgeInsets.symmetric(vertical: 15 , horizontal: 35),
        child: Form(
                    key: controller.formstate ,

          child: ListView(children:   [
               
              const SizedBox(height: 20),
            
              
           Text("35".tr,
               // ignore: deprecated_member_use
               style: Theme.of(context).textTheme.headline1!.copyWith(color: AppcolorApp.black),
               
               ),
            
                customtextbodyauth(text: "34".tr,),
          const   SizedBox(height: 65),
           CustonTextFormAutht(
            valid: (val) {
                               return validInput(val!, 4, 30, "Password");
        
           },
         mycontroller: controller.password,
           hinttext: "13".tr,
           
             iconData: Icons.lock_outline,
             labeltext: "19".tr,
                         isNumber: false, 
 
            ),
        
             CustonTextFormAutht(
          valid: (val) {
                                                    return validInput(val!, 4, 30, "Password");


           },
           mycontroller: controller.repassword,
           hinttext: "34".tr,
             iconData: Icons.lock_outline,
             labeltext: "35".tr, 
                         isNumber: false, 

            ),
          CustomButtomAuth(text:"33".tr, onPressed: (){
            controller.goToSuccessResetPassword();
          }),
         const SizedBox(height: 30,),
           
          ]
          ),
        )
      )),
      )
      );
   }
  }
  
 
  
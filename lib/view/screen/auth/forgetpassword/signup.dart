import 'package:alsharqapp/Controller/auth/signup_controller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:alsharqapp/core/constant/color.dart';
import 'package:alsharqapp/core/functions/alertexitapp.dart';
import 'package:alsharqapp/core/functions/validinput.dart';
import 'package:alsharqapp/view/widget/auth/custombuttonauth.dart';
import 'package:alsharqapp/view/widget/auth/customtextbodyauth.dart';
import 'package:alsharqapp/view/widget/auth/customtextformauth.dart';
import 'package:alsharqapp/view/widget/auth/customtexttitleauth.dart';
import 'package:alsharqapp/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




// ignore: camel_case_types
class SigenUp extends StatelessWidget {
 const  SigenUp({super.key});

  @override
  Widget build(BuildContext context) {
 Get.put(SignUpControllerImp());
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppcolorApp.backgroundcolor,
        elevation: 0.0,
        // ignore: deprecated_member_use
        title:  Text('17'.tr , style: Theme.of(context).textTheme.headline1!.copyWith(color: AppcolorApp.qrey),
      ),
 



      ),
      body: WillPopScope(
                   onWillPop: alertExitApp,
                  child:
                 GetBuilder<SignUpControllerImp>(builder: (controller)=>
                    HandlingDataRequest(statusRequest:controller.statusRequest! , widget:

                    Container(
                 
                         padding:  const  EdgeInsets.symmetric(vertical: 15 , horizontal: 35),
                         child: Form(
                             key: controller.formstate,
                           child: ListView(children:   [
                                
                               const SizedBox(height: 20),
                              CustomTextTitleAuth(text: "10".tr,),
                             const SizedBox(height: 10),
                           customtextbodyauth(text: "11".tr,),
                           const   SizedBox(height: 50),
                         Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: ListTile(
                            title: CircleAvatar(
                             minRadius: 40,
                             
                            ),
                           
                            
                          ),
                        
                         ),
                         SizedBox(height: 30,),
                             CustonTextFormAutht(
                               valid: (val) {
                      return validInput(val!, 4, 8, "username");
                         
                            },
                           mycontroller: controller.username,
                            hinttext: "23".tr,
                               iconData: Icons.person_outline,
                               labeltext: "20".tr, 
                               isNumber: false, 
                               // mycontroller: ,
                         ),
                         
                             CustonTextFormAutht(
                               valid: (val) {
                      return validInput(val!, 11, 20, "email");
                         
                            },
                           mycontroller: controller.email,
                            hinttext: "12".tr,
                               iconData: Icons.email_outlined,
                               labeltext: "18".tr,
                            isNumber: false, 
                         
                               // mycontroller: ,
                         ),
                            
                            CustonTextFormAutht(
                             valid: (val) {
                      return validInput(val!, 9, 10, "phone");
                         
                            },
                           mycontroller: controller.phone,
                            hinttext: "22".tr,
                               iconData: Icons.phone_android_outlined,
                               labeltext: "21".tr, 
                            isNumber: true, 
                         
                               // mycontroller: ,
                         ),
                         
                             CustonTextFormAutht(
                               valid: (val) {
                            return validInput(val!, 5, 30, "password");
                            },
                         mycontroller: controller.password,
                            hinttext: "13".tr,
                              iconData: Icons.lock_outline,
                               labeltext: "19".tr,
                            isNumber: false, 
                         
                               // mycontroller: ,
                         ),
                         
                          
                           
                           CustomButtomAuth(text:"17".tr, onPressed: (){
                               controller.signUp();
                           }),
                          const SizedBox(height: 30,),
                            CustomTextSignUpOrSignIn(
                             textone: "25".tr, 
                            texttwo: "26".tr,
                            onTap: (){
                         controller.goToSignIn();
                            },
                         
                            ),
                           ],
                           ),
                         )
                         )),
                 ),)
      );
    
  }
}
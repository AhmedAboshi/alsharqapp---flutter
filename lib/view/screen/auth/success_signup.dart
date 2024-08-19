import 'package:alsharqapp/Controller/auth/successsignup_controller.dart';
import 'package:alsharqapp/core/constant/color.dart';
import 'package:alsharqapp/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =Get.put(SuccessSignUpControllerImp());
    return Scaffold(
         appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppcolorApp.backgroundcolor,
        elevation: 0.0,
        // ignore: deprecated_member_use
        title:  Text('32'.tr , style: Theme.of(context).textTheme.headline1!.copyWith(color: AppcolorApp.primaryColor),
      ),

      ),
      body: Container(
        padding:  const EdgeInsets.all(15),
        child:  Column(
        
          children: [const
                  Center(child: Icon(Icons.check_circle_outline, size: 200,color: AppcolorApp.primaryColor,)),
                 Text('28'.tr, ),
          const Spacer(),
          Container(
            width: double.infinity,
            child: CustomButtomAuth(text:"31".tr, onPressed: (){
          controller.goToPageLogin();
            }),
          ),
           const SizedBox(height: 30,)
          ]
        ),
      ),
    );
  }
}
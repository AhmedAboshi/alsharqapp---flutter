import 'package:alsharqapp/Controller/auth/successresetpassword_controller.dart';
import 'package:alsharqapp/core/constant/color.dart';
import 'package:alsharqapp/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
       // ignore: unused_local_variable
       SuccessResetPasswordControllerImp controller =Get.put(SuccessResetPasswordControllerImp());

    return Scaffold(
         appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppcolorApp.backgroundcolor,
        elevation: 0.0,
        // ignore: deprecated_member_use
        title:  Text('Success' , style: Theme.of(context).textTheme.headline1!.copyWith(color: AppcolorApp.qrey),
      ),

      ),
      body: Container(
        padding:  const EdgeInsets.all(15),
        child:  Column(
        
          children: [const
                  Center(child: Icon(Icons.check_circle_outline, size: 200,color: AppcolorApp.primaryColor,)),
                const Text('تم انشاء الحساب بنجاح', ),
          const Spacer(),
          Container(
            width: double.infinity,
            child: CustomButtomAuth(text:"GO To Login", onPressed: (){
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
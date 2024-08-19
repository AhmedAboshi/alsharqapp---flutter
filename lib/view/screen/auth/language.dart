
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/core/localization/changelocal.dart';
import 'package:alsharqapp/view/widget/auth/logoauth.dart';
import 'package:alsharqapp/view/widget/language/custombuttomlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

          padding:  EdgeInsets.all(15),
          
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children:   [Center(
              child:  
                                      LogoAuth(),
            ),

              // ignore: deprecated_member_use
              Text("1".tr, style: Theme.of(context).textTheme.headline1),
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "Ar",
                  onPressed: () {
                    controller.changeLang("ar");
                    Get.offAllNamed(AppRoute.onboarding) ; 
                  }),
              CustomButtonLang(
                  textbutton: "En", 
                  onPressed: () {
                    controller.changeLang("en");
                    Get.toNamed(AppRoute.onboarding) ; 
                  }),
            ],
          )),
    );
  }
}


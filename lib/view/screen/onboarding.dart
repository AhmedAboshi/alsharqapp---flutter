



import 'package:alsharqapp/Controller/onboarding_controller.dart';


import 'package:alsharqapp/view/widget/dotcontroller.dart';
import 'package:alsharqapp/view/widget/onboarding/Custombutton.dart';
import 'package:alsharqapp/view/widget/onboarding/customslider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




// ignore: camel_case_types
class onboarding extends StatelessWidget {
  const onboarding({super.key});
  

  @override
  Widget build(BuildContext context) {
    Get.put(onbordingcntrollerlerImp());
    return   const Scaffold(
       body: SafeArea(child: Column(
        children: [
          Expanded(
            flex: 4,
         child: CustomSliderOnBoarding() ,
          ),
          Expanded(
          flex: 1,
          child:  Column(children: [
CustomDotControllerOnBoarding(),

          ],), 
          ),
          Spacer(flex: 1,),
          CastouButton(),
       
        ],

      
          )
          
      )
      );
  }

  void next() {
        // ignore: unused_local_variable, prefer_typing_uninitialized_variables
        var currentPage;
        currentPage++;

  }      
         
 
 
        
  }    





  
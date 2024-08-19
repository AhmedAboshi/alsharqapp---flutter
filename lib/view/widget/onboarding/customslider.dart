import 'package:alsharqapp/Controller/onboarding_controller.dart';
import 'package:alsharqapp/data/datasource/static/static.dart';
import 'package:alsharqapp/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<onbordingcntrollerlerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>const onboarding(),);
    return   
            PageView.builder(
controller: controller.pageController,
onPageChanged: (val){
 controller.onPageChanged(val);
},

            itemCount: onboardinglist.length,
            itemBuilder: (context, i) =>  Column(children: [
            Text(onboardinglist[i].title! ,
            // ignore: deprecated_member_use
            style: Theme.of(context).textTheme.bodyText1,),
            const SizedBox(height: 50,),
       Image.asset(onboardinglist[i].images!, width: 230,height: 200,fit: BoxFit.fill,),
        const SizedBox(height: 50,),
        Container(
         width: double.infinity,
         alignment: Alignment.center,
         child:Text(onboardinglist[i].body!, 
         textAlign: TextAlign.center, 
         // ignore: deprecated_member_use
         style: Theme.of(context).textTheme.bodyText1,
         ),

        ),

        ],
      ),       
          
          );
  }
}
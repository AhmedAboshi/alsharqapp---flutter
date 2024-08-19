
import 'package:alsharqapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class CardDeliveryTypeCheckout extends StatelessWidget {
   final String imagename ; 
  final String title  ; 
  final bool active   ;
  const CardDeliveryTypeCheckout({super.key, required this.imagename, required this.title, required this.active});
 
  @override
  Widget build(BuildContext context) {
    return  Container(
                    height: 120,
                    width: 120,
                     decoration:  BoxDecoration(
                      color: active ? AppColor.primaryColor : null ,
                    ),
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(imagename , 
                        color:  active? Colors.green[10] : null,
                        width: 120,),
                        Text(title ,
                         style:   TextStyle(color: active? AppColor.backgroundcolor : AppColor.primaryColor, fontWeight: active? FontWeight.bold : null),)
                      ],
                    ),
                  );
  }
}
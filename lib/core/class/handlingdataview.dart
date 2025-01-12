import 'package:alsharqapp/core/constant/imagesassed.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget; 
  const HandlingDataView({super.key, required this.statusRequest, required this.widget,});

  @override
  Widget build(BuildContext context) {
    return 
    statusRequest == StatusRequest.loading ?
     Center(child:   Lottie.asset(APPimagesassed.loading , width: 250 , height: 250 )) :
    statusRequest == StatusRequest.offlinefailure ?
     Center(child: Lottie.asset(APPimagesassed.offline , width: 250 , height: 250)) :
    statusRequest == StatusRequest.serverfailure ?
     Center(child:Lottie.asset(APPimagesassed.server , width: 250 , height: 250)):
    statusRequest == StatusRequest.failure ?
     Center(child: Lottie.asset(APPimagesassed.noData , width: 250 , height: 250 , )) : widget;


     
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return 
    statusRequest == StatusRequest.loading ?
     Center(child:   Lottie.asset(APPimagesassed.loading , width: 250 , height: 250)) :
    statusRequest == StatusRequest.offlinefailure ?
     Center(child: Lottie.asset(APPimagesassed.offline , width: 250 , height: 250)) :
    statusRequest == StatusRequest.serverfailure ?
     Center(child:Lottie.asset(APPimagesassed.server , width: 250 , height: 250)):
    widget;

     
  }
}
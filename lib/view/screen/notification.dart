
import 'package:alsharqapp/Controller/notification_controller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(NotificationController());
    return Container(
      child: GetBuilder<NotificationController>(builder: (controller)=> HandlingDataView(statusRequest: controller.statusRequest,
       widget: Container(
        padding: const  EdgeInsets.all(10),
        child: ListView(children:  [
          const Center(child: Text("Notification" , 
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold, 
            color: Colors.blue,
          ),
          ),
          ),
       const    SizedBox(height: 10,),
          ...List.generate(controller.data.length, (index) =>
           Container(
            padding: const  EdgeInsets.symmetric(vertical: 10),
             child: Stack(
               children: [
                 ListTile(
                  title:  Text(controller.data[index]["notification_title"]),
                  subtitle: Text(controller.data[index]["notification_body"]),
                 
                           ),
                           Positioned(
                            right: 5,
                            child:   
                                         Text( Jiffy.parse(controller.data[index]["notification_datetime"], pattern: "yyyy-MM-dd").fromNow(),
                                          style: const  TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),)
                                         
               ],
             ),
           ))
        ],),
      ),
    )),);
    
  }
}
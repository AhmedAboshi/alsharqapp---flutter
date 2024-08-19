

import 'package:alsharqapp/Controller/auth/users/view_controller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:alsharqapp/linkapi.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
   UsersController  controller= Get.put(UsersController());  
  return Scaffold(
      appBar: AppBar(
        title: Text("87".tr),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      
      body:
           Padding(
             padding: const EdgeInsets.all(30),
             child: GetBuilder<UsersController>(
              builder: (controller)=> HandlingDataView(statusRequest: controller.statusRequest, 
              
              widget:
              
               Container(
 child: ListView.builder(
   itemCount: 1,
  itemBuilder:   
          (context, index){
               return Container(
                 padding:EdgeInsets.symmetric(horizontal: 15),
                   child: Column(
                    
                       
                    children: [
              CachedNetworkImage(
            height:200 ,
            width: 200,
                   imageUrl:       "${ AppLink.imagestusers}/${controller.data[index].usersImage}"),
             
                      




                      
                      SizedBox(height: 80,),
                       Row(
                         children: [
                          SizedBox(width: 40,),
                          Text("52".tr,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                           SizedBox(width: 40,),
                           Text("${controller.myServices.sharedPreferences.getString("username")}",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.green),),
                         ],
                       ),
                       SizedBox(height: 15,),
                        Row(
                          children: [
                            Text("66".tr ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                             SizedBox(width: 40,),
                       Text("${controller.myServices.sharedPreferences.getString("userphone")}" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.green, ),),
                          ],
                        ),
                          
                       SizedBox(height: 15,),
                       Row(
                         children: [
                          Text("18".tr,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                             SizedBox(width: 40,),
                           Text("${controller.myServices.sharedPreferences.getString("usersemail")}",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.green),),
                         ],
                       ),
                    ],
                    
                       
                     ),
         
               );
         }
               ),

               )),
           
         
             ),
           ),
           );
         
         }
          
               
       
       
       

    
  }

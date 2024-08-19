
import 'package:alsharqapp/Controller/address/adddetails_controller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:alsharqapp/view/widget/auth/custombuttonauth.dart';
import 'package:alsharqapp/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressAddDetails extends StatelessWidget {
  const AddressAddDetails({super.key});


  @override
  Widget build(BuildContext context) {
    Get.put(AddAddressDetailsController());
    return Scaffold(
      appBar: AppBar(
        title:  const  Text("AddressAdd"),
      ),
      
      body: Container(
        padding: const  EdgeInsets.all(15),
      child: GetBuilder<AddAddressDetailsController>(builder: (controller) => HandlingDataView(statusRequest: controller.statusRequest, widget:   ListView (
        children:  [
          CustonTextFormAutht(
            hinttext: "city",
            labeltext: "city",
             iconData: Icons.location_city,
             mycontroller: controller.city,
             valid: (val){
               return null;
             },
             isNumber: false,),

             CustonTextFormAutht(
            hinttext: "stret",
            labeltext: "stret",
             iconData: Icons.streetview,
             mycontroller: controller.street,
             valid: (val){
               return null;
             },
             isNumber: false,),

             CustonTextFormAutht(
            hinttext: "name",
            labeltext: "name",
             iconData: Icons.near_me,
             mycontroller: controller.name,
             valid: (val){
               return null;
             },
             isNumber: false,),
             CustomButtomAuth(text: "Add" , onPressed: () {
               controller.addAddress();
                Get.rawSnackbar(
            title: "اشعار",
            messageText: const Text("تم اضافة عنوان التوصيل"));
             },),
             
        ]
      ),),)
       
        
      ),
      );
      
      
    
  }


}
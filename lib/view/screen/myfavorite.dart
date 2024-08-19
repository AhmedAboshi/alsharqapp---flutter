
import 'package:alsharqapp/Controller/myfavoritecontroller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/myfavorite/customlistfavoriteitems.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());
    return  Scaffold(
      appBar: AppBar(
        title: Text("86".tr , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
        textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<MyFavoriteController>(
          builder: (controller) => ListView(
          children: [
        //    CustomAppBar(

                      //  titleappbar: "40".tr,
                         
                      //   onPressedSearch: (){}, onPressedIconFavorite: () {  }, onPressedIconfavorite: () {  },
                       
                       //  ),
                         const SizedBox(height: 20,),
                         HandlingDataView(statusRequest: controller.statusRequest, 
                         widget: GridView.builder(
                          shrinkWrap: true,
                          physics:const NeverScrollableScrollPhysics(),
                          itemCount: controller.data.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.7), 
                         itemBuilder: ( (context, index) {
                          return CustomListFavoriteItems(itemsModel: controller.data[index],);
                         } )))
          ],
        ),),
      ),
    );
  }
}
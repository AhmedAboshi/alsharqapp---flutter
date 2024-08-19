

import 'package:alsharqapp/Controller/favorite_controller.dart';
import 'package:alsharqapp/Controller/home_controller.dart';
import 'package:alsharqapp/Controller/offer_controller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/view/screen/auth/homeScreen.dart';
import 'package:alsharqapp/view/widget/customappbar.dart';
import 'package:alsharqapp/view/widget/offers/customitemsoffer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
   OfferController controller =   Get.put(OfferController());
       FavoriteController controllerFav = Get.put(FavoriteController());
       Get.put(HomeControllerImp());

    return GetBuilder<OfferController>(builder: (controller)=> Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
           CustomAppBar(
                          mycontroller:controller.search! ,
                          titleappbar: "40".tr,
                           //onPressedIcon: (){},
                           onPressedSearch: (){
                          controller.onSearchItems();
                           },
                           onChanged: (val){
                            controller.checkSearch(val);
                           },
                           onPressedIconfavorite: () {
                              Get.toNamed(AppRoute.myfavroite);
                           }, onPressedIconFavorite: () {  Get.toNamed(AppRoute.myfavroite);
                           },
                           ),
                           SizedBox(height: 15,),
    !controller.isSearch  
      
    ? HandlingDataView(statusRequest: controller.statusRequest, 
    
      widget: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller.data.length,
        itemBuilder: (context ,index)=>
      CustomListItemsoffer(
                              itemsModel:controller.data[index],
                                 )),
                                 
      )
  :  ListItemsSearch(listdatamodel: controller.data)
          ],
      ),
    )
    );
    
  }
}


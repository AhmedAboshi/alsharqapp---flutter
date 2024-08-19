import 'package:alsharqapp/Controller/home_controller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/core/functions/translatefatabase.dart';
import 'package:alsharqapp/data/model/itemsmodel.dart';
import 'package:alsharqapp/linkapi.dart';
import 'package:alsharqapp/view/widget/customappbar.dart';
import 'package:alsharqapp/view/widget/home/customcardhome.dart';
import 'package:alsharqapp/view/widget/home/customtitlehome.dart';
import 'package:alsharqapp/view/widget/home/listcategorieshome.dart';
import 'package:alsharqapp/view/widget/home/listitemshome.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return 
       GetBuilder<HomeControllerImp>(
          builder: (controller) =>  Container(
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
                         
                         HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: !controller.isSearch
                   ?Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       CustomCardHome(title: "${controller.titlehomeCard}",
                          body: "${controller.bodyhomeCard}",
                         ),
                         
                      CustomTitleHome(title: "42".tr,),
                     const ListCategoriesHome(),
                      CustomTitleHome(title: "43".tr),
                      const ListItemsHome(),
                      ]
                           )  
                    
                :  ListItemsSearch(listdatamodel: controller.listdata)
                      //CustomTitleHome(title: "41".tr,),
                     // const ListItemsHome(),

                         )
                    ]
                  )
                  )
                  );
    
  }
}

class ListItemsSearch extends GetView<HomeControllerImp> {
  final List<ItemsModel>listdatamodel;
  const ListItemsSearch({super.key, required this.listdatamodel});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: listdatamodel.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
       return InkWell(
        onTap: () {
          controller.goToPageProductDetails(listdatamodel[index]);
        },
         child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
       
           child: Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(children: [
               Expanded(child: CachedNetworkImage(imageUrl: "${ AppLink.imagestItems}/${listdatamodel[index].itemsImage}")),
               Expanded(flex: 2, child: ListTile(
                title: Text(translateDatabase(listdatamodel[index].itemsNameAr!, listdatamodel[index].itemsName!)),
                subtitle:Text(translateDatabase(listdatamodel[index].categoriesNameAr!, listdatamodel[index].categoriesName!)), 
               )),
                   ],),
            )),
         ),
       );
    },);
  }
}
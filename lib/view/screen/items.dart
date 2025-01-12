import 'package:alsharqapp/Controller/favorite_controller.dart';
import 'package:alsharqapp/Controller/items_controller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/data/model/itemsmodel.dart';
import 'package:alsharqapp/view/screen/auth/homeScreen.dart';
import 'package:alsharqapp/view/widget/customappbar.dart';
import 'package:alsharqapp/view/widget/items/customlistitems.dart';
import 'package:alsharqapp/view/widget/items/listcategoirseitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      ItemsControllerImp controller =Get.put(ItemsControllerImp());
    FavoriteController controllerFav = Get.put(FavoriteController());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          CustomAppBar(
                        mycontroller:controller.search! ,
                        titleappbar: "40".tr,
                        // onPressedIcon: (){},
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
                         
          const SizedBox(height: 20),
          const ListCategoriesItems(),
          GetBuilder<ItemsControllerImp>(
              builder: (controller) => HandlingDataView(
                  statusRequest: controller.statusRequest,
                   widget: !controller.isSearch? GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.data.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 0.7),
                      itemBuilder: (BuildContext context, index) {
                        controllerFav.isfavorite[controller.data[index]
                            ['items_id']] = controller.data[index]['favorite'];
                        return CustomListItems(
                            itemsModel:
                                ItemsModel.fromJson(controller.data[index]));
                                
                      })
                      :  ListItemsSearch(listdatamodel: controller.listdata),
                      )
                      )
        ]),
      ),
    );
  }
}









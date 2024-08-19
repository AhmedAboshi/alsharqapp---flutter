import 'package:alsharqapp/Controller/favorite_controller.dart';
import 'package:alsharqapp/Controller/items_controller.dart';
import 'package:alsharqapp/core/constant/color.dart';
import 'package:alsharqapp/core/constant/imagesassed.dart';
import 'package:alsharqapp/core/functions/translatefatabase.dart';
import 'package:alsharqapp/data/model/imagemodel.dart';
import 'package:alsharqapp/data/model/itemsmodel.dart';
import 'package:alsharqapp/linkapi.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;
  // final bool active;
  const CustomListItems({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.goToPageProductDetails(itemsModel , ImageModel);
        },
        child: Card(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Hero(
                        tag: "${itemsModel.itemsId}",
                        child: CachedNetworkImage(
                          imageUrl:
                              AppLink.imagestItems + "/" + itemsModel.itemsImage!,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      
                      const SizedBox(height: 10),
                      Text(
                          translateDatabase(
                              itemsModel.itemsNameAr, itemsModel.itemsName),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                       Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                           Text("${controller.deliverytime}Hours", textAlign: TextAlign.center),
                        Icon(Icons.timer_sharp , color: Colors.green,)
                       ],
                     ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${itemsModel.itemspricedisount} \$",
                              style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "sans")),
                          GetBuilder<FavoriteController>(
                              builder: (controller) => IconButton(
                                  onPressed: () {
                                    if (controller.isfavorite[itemsModel.itemsId] ==
                                        "1") {
                                      controller.setFavorite(
                                          itemsModel.itemsId, "0");
                                      controller
                                          .removeFavorite(itemsModel.itemsId!);
                                    } else {
                                      controller.setFavorite(
                                          itemsModel.itemsId, "1");
                                      controller.addFavorite(itemsModel.itemsId!);
                                    }
                                  },
                                  icon: Icon(
                                    itemsModel.favorite == "1"
                                        ? Icons.favorite
                                        : Icons.favorite_border_outlined,
                                    color: AppColor.primaryColor,
                                  )))
                        ],
                      )
                    ]),
              ),
          if(itemsModel.itemsDiscount!="0")    Positioned(
                left: 4,
                top: 4,
                child: Image.asset(APPimagesassed.saleOne , width: 40,))
            ],
          ),
        ));
  }
}

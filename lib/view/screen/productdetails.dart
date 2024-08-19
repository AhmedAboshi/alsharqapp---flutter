import 'package:alsharqapp/Controller/image_controller.dart';
import 'package:alsharqapp/Controller/productdetails_controller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:alsharqapp/core/constant/color.dart';
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/core/functions/translatefatabase.dart';
import 'package:alsharqapp/view/widget/productdetails/ImageProduct.dart';
import 'package:alsharqapp/view/widget/productdetails/TopProductPageDetails.dart';
import 'package:alsharqapp/view/widget/productdetails/priceandcount.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


        Get.put(ProductDetailsControllerImp());

    return Scaffold(
        bottomNavigationBar: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 40,
            child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: AppColor.primaryColor,
                onPressed: () {
                  Get.toNamed(AppRoute.cart);
                },
                child:  Text(
                  "57".tr,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))),
        body: GetBuilder<ProductDetailsControllerImp>(
            builder: (controller) => ListView(children: [
                  const TopProductPageDetails(),
                   SizedBox(height: 10,),
                  
                  const SizedBox(
                    height: 100,
                  ),
                  SizedBox(height:50 ,),
                   //SingleSubCategory(sub_id: "1", sub_image: "assets/images/box2.jpg",),
                  HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${translateDatabase(controller.itemsModel.itemsNameAr , controller.itemsModel.itemsName)}",
                                  style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25),
                                      ),
                                      const SizedBox(height: 10),
                                     //  ImageProduct(),
                              const SizedBox(height: 10),
                              PriceAndCountItems(
                                  onAdd: () {
                                    controller.add();
                                  },
                                  onRemove: () {
                                    controller.remove();
                                  },
                                  price:
                                      "${controller.itemsModel.itemspricedisount}",
                                  count: "${controller.countitems}"),
                               SizedBox(height: 10),
                              Text("${translateDatabase(controller.itemsModel.itemsDescAr , controller.itemsModel.itemsDesc)}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.secoundColor)),
                              const SizedBox(height: 20),
                              // Text("Color",
                              //     style: Theme.of(context).textTheme.headline1!.copyWith(
                              //           color: AppColor.fourthColor,
                              //         )),
                              // const SizedBox(height: 10),
                              // const SubitemsList()
                            ]),
                      ))
                ])));
  }
}
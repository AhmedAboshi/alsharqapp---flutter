import 'package:alsharqapp/Controller/orders/pending_controller.dart';
import 'package:alsharqapp/core/constant/color.dart';
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/data/model/ordersmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class CardOrdersList extends GetView<OrdersPendingController> {
  final OrdersModel listdata;
  const CardOrdersList({Key? key, required this.listdata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Order Number : #${listdata.ordersId}".tr,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)
                          ),
                  const Spacer(),
                  // Text(listdata.ordersDatetime!)
                  // Text(
                  //   Jiffy(listdata.ordersDatetime!, "yyyy-MM-dd").fromNow(),
                  //   style: const TextStyle(
                  //       color: AppColor.primaryColor,
                  //       fontWeight: FontWeight.bold),
                  // )
                ],
              ),
              Divider(),
              
              Text("Order Price : ${listdata.ordersPrice} \$".tr),
              Text("Delivery Price : ${listdata.ordersPricedelivery} \$ "),
              Text(
                  "Payment Method : ${controller.printPaymentMethod(listdata.ordersPaymentmethode!)} "),
              Text(
                  "Order Status : ${controller.printOrderStatus(listdata.ordersStutas!)} "),
              const Divider(),
              Row(
                children: [
                  Text("Total Price : ${listdata.ordersTotalprice} \$ ",
                      style: const TextStyle(
                          color: AppColor.secoundColor,
                          fontWeight: FontWeight.bold)),
                          
                  const Spacer(),
                  MaterialButton(
                    onPressed: () {
                      Get.toNamed(AppRoute.ordersdetalis,
                          arguments: {"ordersmodel": listdata});
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    child:  Text("76".tr, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                  ),
                  SizedBox(width: 10),
                 if (listdata.ordersStutas! == "0") MaterialButton(
                    onPressed: () {
                      controller.deleseOrders(listdata.ordersId!);
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    child:  Text("77".tr , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                  )
                ],
              ),
            ],
          )),
    );
  }
}

import 'package:alsharqapp/Controller/orders/pending_controller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:alsharqapp/view/widget/orders/orderslistcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersPending extends StatelessWidget {
  const OrdersPending({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OrdersPendingController());
    return Scaffold(
      appBar: AppBar(
        title:  Text("75".tr),
      ),
      body: Container(
        padding:  const EdgeInsets.all(10),
        child: GetBuilder<OrdersPendingController>(builder: (controller) => HandlingDataView(statusRequest: controller.statusRequest, widget: ListView.builder(
          itemCount: controller.data.length,
          itemBuilder: (context, index) => CardOrdersList(listdata: controller.data[index],),
        ),),
        
        ) ,
      ),
    );
  }
}

import 'package:alsharqapp/Controller/orders/archive_controller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:alsharqapp/view/widget/orders/orderslistcardarchive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersArchiveView extends StatelessWidget {
  const OrdersArchiveView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put((OrdersArchiveController())); 
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orders Archive"),
      ),
      body: Container(
        padding:  const EdgeInsets.all(5),
        child: GetBuilder<OrdersArchiveController>(builder: (controller) => HandlingDataView(statusRequest: controller.statusRequest, widget: ListView.builder(
          itemCount: controller.data.length,
          itemBuilder: (context, index) => CardOrderListArchive(listdata: controller.data[index],),
        ),)
        
        ) ,
      ),
    );
  }
}


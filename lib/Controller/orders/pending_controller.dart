import 'package:alsharqapp/core/Services/Services.dart';
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/core/functions/handingdatacontroller.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/datasource/remote/orders/pending_data.dart';
import 'package:alsharqapp/data/model/ordersmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersPendingController extends GetxController{
 OrdersPendingData ordersPendingData = OrdersPendingData(Get.find());

  List<OrdersModel> data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

goToPageTracking(OrdersModel ordersModel){
  Get.toNamed(AppRoute.orderstracking, arguments: {"ordersModel" : ordersModel});
}


  String printPaymentMethod(String val){
     if(val =="0"){
      return "Cash On Delivery";
    }else{
      return "Payment Card";
    }
  }
   String printOrderStatus(String val) {
    if (val == "0") {
      return "Pending Approval";
    } else if (val == "1") {
      return "The Order is being Prepared ";
    } else if (val == "2") {
      return "Ready To Picked up by Delivery man";
    }  else if (val == "3") {
      return "Archive";
    } else {
      return "Archive";
    }
  }
  getOrders( ) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersPendingData.getData(
               myServices.sharedPreferences.getString("id")!,
);
    // ignore: avoid_print
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata = response['data'];
        data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
        //data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  deleseOrders(String ordersid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersPendingData.deleteData(
              ordersid,
);
    // ignore: avoid_print
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
         refrehOrder();
          Get.rawSnackbar(title: "اشعار" ,
         messageText:  Text(
          "تم حذف الطلب"));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }
   refrehOrder() {
    getOrders();
  }
 @override
  void onInit() {
   getOrders( );
    super.onInit();
  }
}
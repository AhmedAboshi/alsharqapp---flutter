import 'package:alsharqapp/core/Services/Services.dart';
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/core/functions/handingdatacontroller.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/datasource/remote/orders/archive_data.dart';
import 'package:alsharqapp/data/model/ordersmodel.dart';
import 'package:get/get.dart';

class OrdersArchiveController extends GetxController {
  OrdersArchiveData ordersArchiveData = OrdersArchiveData(Get.find());

  List<OrdersModel> data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  String printOrderType(String val) {
    if (val == "0") {
      return "delivery";
    } else {
      return "Recive";
    }
  }

  String printPaymentMethod(String val) {
    if (val == "0") {
      return "Cash On Delivery";
    } else {
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
      return "On The Way";
    } else {
      return "Archive";
    }
  }

  getOrders() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersArchiveData
        .getData(myServices.sharedPreferences.getString("id")!);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata = response['data'];
        data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
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
submitRating( String ordersid ,double rating , String comment) async{
    
     data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersArchiveData.ratingData(
               ordersid, comment , rating.toString()
);
    // ignore: avoid_print
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
       Get.offAllNamed(AppRoute.archiveorders);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
    
  }
  @override
  void onInit() {
    getOrders();
    super.onInit();
  }
}
















import 'package:alsharqapp/Controller/home_controller.dart';
import 'package:alsharqapp/core/Services/Services.dart';

import 'package:alsharqapp/core/functions/handingdatacontroller.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/datasource/remote/items_data.dart';
import 'package:alsharqapp/data/model/imagemodel.dart';
import 'package:alsharqapp/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  intialData();
  changeCat(int val, String catval);
  getItems(String categoryid);
  goToPageProductDetails(ItemsModel itemsModel , ImageModel imageModel);
}

class ItemsControllerImp extends SearchMixController {
  List categories = [];
  String? catid;
  int? selectedCat;
   String? id ;
    String? deliverytime ="" ;
  ItemsData testData = ItemsData(Get.find());

  List data = [];

 
  @override
  // ignore: overridden_fields
  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  @override
  void onInit() {
        search =TextEditingController();

    intialData();
    super.onInit();
  }

  intialData() {
    deliverytime = myServices.sharedPreferences.getString("deliverytime");
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedcat'];
    catid = Get.arguments['catid'];
    getItems(catid!);
  }

  changeCat(val, catval) {
    selectedCat = val;
    catid = catval;
    getItems(catid!);
    update();
  }

  getItems(categoryid ) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await testData.getData(
        categoryid ,        myServices.sharedPreferences.getString("id")!,
); 
    // ignore: avoid_print
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  goToPageProductDetails(itemsModel , imageModel) {
    Get.toNamed("productdetails", arguments: {"itemsmodel": itemsModel , "imageModel" : imageModel});
  }
}























import 'package:alsharqapp/core/functions/handingdatacontroller.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/datasource/remote/offers_data.dart';
import 'package:alsharqapp/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OfferController extends GetxController {
  OfferData offerData = OfferData(Get.find());
  List<ItemsModel> data = [];

  late StatusRequest statusRequest;

 

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await offerData.getData();
    // ignore: avoid_print
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
         List listedata2 = response['data'];
        data.addAll(listedata2.map((e) => ItemsModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure ; 
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
    search =TextEditingController();
  }
  
   
  bool isSearch = false;
  TextEditingController? search;
  checkSearch(val) {
    if (val == "") {
      statusRequest=StatusRequest.none;
      isSearch = false;
    }
    update();
  }

  onSearchItems() {
    isSearch = true;
   //Searchdata();
    update();
  }
}



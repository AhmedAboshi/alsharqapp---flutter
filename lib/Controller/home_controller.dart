import 'package:alsharqapp/core/Services/Services.dart';
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/core/functions/handingdatacontroller.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/datasource/remote/home_data.dart';
import 'package:alsharqapp/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class  HomeController extends SearchMixController {
 initialData()  ;
 getdata() ;  
 goToItems( List categories ,  int selectedCat , String categorid) ;  

}

class HomeControllerImp extends HomeController {
 
  MyServices myServices = Get.find();

  String? username;
  String? id;  
   String? lang ;
   String? userphone;
   String titlehomeCard = "" ;
    String bodyhomeCard  = "";
   String deliverytime = "" ; 
  // List data = [];
  List categories = [];
 List items = [];
List settingdata = [];
  late StatusRequest statusRequest; 
  @override
  initialData() {
    
    lang =myServices.sharedPreferences.getString("lang");
    username = myServices.sharedPreferences.getString("username") ; 
    id = myServices.sharedPreferences.getString("id") ;
    userphone = myServices.sharedPreferences.getString("userphone") ; 

  }

  @override
  void onInit() {
    //  FirebaseMessaging.instance.getToken().then((value) {
    //  print(value);
    //  String? token = value;
    // });
    search =TextEditingController();
   
    getdata() ; 
    initialData();
    super.onInit();
  }
  
  @override
  getdata() async {
        statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    // ignore: avoid_print
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
       categories.addAll(response['categories']['data']);
       items.addAll(response['items']['data']);
     settingdata.addAll(response['setting']['data']);
     titlehomeCard = settingdata[0]['setting_titlename'];
    bodyhomeCard  = settingdata[0]['setting_body'];
   deliverytime  = settingdata[0]['setting_deliverytime'];
    myServices.sharedPreferences.setString("deliverytime", deliverytime);
      } else {
        statusRequest = StatusRequest.failure ; 
      }
    }
    update();
  }
  
  
  
 @override
  goToItems( categories ,   selectedCat , categorid) {
    Get.toNamed(AppRoute.items , arguments: {
      "categories" : categories,
      "selectedCat" : selectedCat,
      "catid" :categorid,
    });
  }
 goToPageProductDetails(itemsModel) {
    Get.toNamed("productdetails", arguments: {"itemsmodel": itemsModel});
  }
} 
 
class SearchMixController extends GetxController{
  late StatusRequest statusRequest;
  HomeData homedata = HomeData(Get.find());
 List<ItemsModel> listdata=[];
  // ignore: non_constant_identifier_names
  Searchdata() async {
        statusRequest = StatusRequest.loading;
        update();
    var response = await homedata.SearchData(search!.text);
    // ignore: avoid_print
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
       listdata.clear();
       List responsedata =response['data'];
       listdata.addAll(responsedata.map((e) => ItemsModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure ; 
      }
    }
    update();
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
    Searchdata();
    update();
  }
}
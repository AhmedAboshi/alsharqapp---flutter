import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/core/functions/handingdatacontroller.dart';
import 'package:alsharqapp/core/Services/Services.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/datasource/remote/address_data.dart';
import 'package:alsharqapp/data/datasource/remote/checkout_data.dart';
import 'package:alsharqapp/data/datasource/remote/orders/pricecity_data.dart';
import 'package:alsharqapp/data/model/addressmodel.dart';
import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutController extends GetxController {
  AddressData addressData = Get.put(AddressData(Get.find()));
  CheckoutData checkoutData = Get.put(CheckoutData(Get.find()));
PriceCityData priceCityData = Get.put(PriceCityData(Get.find()));
List<SelectedListItem> dropdownlist = [ ];
  MyServices myServices = Get.find();

  StatusRequest statusRequest = StatusRequest.none;

  String? paymentMethod;
  String addressid = "0";

  late String couponid;
  late String coupondiscount;
  late String priceorders;
   late TextEditingController dropdownname ;
 late TextEditingController dropdonid ;
 late  TextEditingController cityup;
  late TextEditingController citydown;
  late TextEditingController tyapetrack;
 late TextEditingController carusers;
 late TextEditingController phone;
  List<AddressModel> dataaddress = [];

  choosePaymentMethod(String val) {
    paymentMethod = val;
    update();
  }

  

  chooseShippingAddress(String val) {
    addressid = val;
    update();
  }

  getShippingAddress() async {
    statusRequest = StatusRequest.loading;

    var response = await addressData
        .getData(myServices.sharedPreferences.getString("id")!);

    print("=============================== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata = response['data'];
        dataaddress.addAll(listdata.map((e) => AddressModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.success;
      }
      // End
    }
    update();
  }

  checkout() async {
    if (paymentMethod == null) {
      return Get.snackbar("Error", "Please select a payment method");
    }
    

    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "usersid": myServices.sharedPreferences.getString("id"),
      "addressid": addressid.toString(),
      "pricedelivery": "0",
      "ordersprice": priceorders,
      "couponid": couponid,
      "coupondiscount" : coupondiscount.toString() , 
      "cityup" : cityup.text,
      "paymentmethode": paymentMethod.toString(),
      "citydown" : citydown.text,
      "tyapetrack" : tyapetrack.text,
             "carusers" : carusers.text,
               "phone" : phone.toString()
    };

    var response = await checkoutData.checkout(data);

    print("=============================== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
       
        Get.offAllNamed(AppRoute.homeScreen);
        Get.snackbar("Success", "the order was successfully" , backgroundColor: Colors.red, colorText: Colors.white);
      } else {
        statusRequest = StatusRequest.none;
        Get.snackbar("Error", "try again");
      }
      // End
    }
    update();
  }

// getpriceCityData() async {
//     statusRequest = StatusRequest.loading;
//     update();
//     var response = await priceCityData.get();
//     print("=============================== Controller $response ");
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//       List<OrdersModel> data =[];
//        List datalist = response['data'];
//        data.addAll(datalist.map((e) => OrdersModel.fromJson(e)));
//        for(int i = 0 ; i< data.length ; i++){
//         dropdownlist.add(SelectedListItem(name: data[i].ordersCityup! , value: data[i].ordersCat));
//        }
//       } else {
//         statusRequest = StatusRequest.failure ; 
//       }
//     }
//     update();
//   }



  @override
  void onInit() {
    //getpriceCityData();
//  dropdownname = TextEditingController();
// dropdonid = TextEditingController();
    couponid = Get.arguments['couponid'];
    priceorders = Get.arguments['priceorder'];
    coupondiscount = Get.arguments['discountcoupon'].toString();
cityup = TextEditingController();
citydown = TextEditingController();
tyapetrack = TextEditingController();
carusers = TextEditingController();
phone = TextEditingController();
    getShippingAddress();
    super.onInit();
  }
  showDropDownList(context){
  DropDownState(
      DropDown(
        bottomSheetTitle: const Text(
          "title",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        submitButtonChild: const Text(
          'Done',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        data:  [SelectedListItem(name: "a"),SelectedListItem(name: "b") ],
        selectedItems: (List<dynamic> selectedList) {
          SelectedListItem selectedListItem = selectedList[0];
          dropdownname.text = selectedListItem.name;
       //   showSnackBar(list.toString());
        },
       
      ),
    ).showModal(context);
}
}
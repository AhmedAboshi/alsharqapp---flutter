import 'package:alsharqapp/core/functions/handingdatacontroller.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/datasource/remote/address_data.dart';
import 'package:alsharqapp/data/model/addressmodel.dart';
import 'package:get/get.dart';
import 'package:alsharqapp/core/Services/Services.dart';

class AddressViewController extends GetxController{
   AddressData addressData = AddressData(Get.find());
     MyServices myServices = Get.find();
     deleteAddress( String addressid){
      addressData.deleteData(addressid); 
      data.removeWhere((element) => element.addressId== addressid);
      update();
     }
  List <AddressModel>data = [];

  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await addressData.getData(myServices.sharedPreferences.getString("id")!);
    // ignore: avoid_print
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
          
        List listdata =response['data'];
        
        data.addAll(listdata.map((e) => AddressModel.fromJson(e)));
      
        if(data.isEmpty){
          statusRequest =StatusRequest.failure;
        }
        
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
  }
}
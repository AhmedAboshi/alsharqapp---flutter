import 'package:alsharqapp/core/functions/handingdatacontroller.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/datasource/remote/myfavorite_data.dart';
import 'package:alsharqapp/data/model/myfavorite.dart';
import 'package:get/get.dart';

import '../core/Services/Services.dart';

class MyFavoriteController extends GetxController{

  MyFavoriteData favoriteData = MyFavoriteData(Get.find());
  List <MyfavoriteModel>data = [];

  late StatusRequest statusRequest;
  MyServices myServices = Get.find();

//  key => id items
//  Value => 1 OR 0

  
  getData( )async{
data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.getData(
myServices.sharedPreferences.getString("id")!) ;
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List responsedata = response['data'];
        data.addAll(responsedata.map((e) => MyfavoriteModel.fromJson(e)));
        // ignore: avoid_print
        print(data);

      } else {
                 
              statusRequest = StatusRequest.failure;
    }
    //end
    }
      update();
    }

     deleteFromFavorite(String favoriteid ){
//data.clear();
   // statusRequest = StatusRequest.loading;
    
      
       data.removeWhere((element) => element.favoriteId==favoriteid);
      
      update();
    }


    @override
  void onInit() {
   getData();
    super.onInit();
  }
  
  }
 
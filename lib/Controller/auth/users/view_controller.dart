import 'package:alsharqapp/core/Services/Services.dart';
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/core/functions/handingdatacontroller.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/datasource/remote/Users_data.dart';
import 'package:alsharqapp/data/model/ordersmodel.dart';
import 'package:alsharqapp/data/model/usersmodel.dart';
import 'package:get/get.dart';

class UsersController extends GetxController {
UsersData usersData = UsersData(Get.find());
  List <UsersModel>data = [];
 late final UsersModel usersModel ;
List<OrdersModel> listdata = [];
  late StatusRequest statusRequest;
 MyServices myServices = Get.find();
  getData() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await usersData.get();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
       List datalist = response['data'];
       data.addAll(datalist.map((e) => UsersModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure ; 
      }
    }
    update();
  }
  




  @override
  void onInit() {
    getData();
   //  myback();
  //deleseUsers(String usersid);
    super.onInit();
  }
  myback(){
    Get.offAllNamed(AppRoute.homeScreen);
    return Future.value(false);
  }
}
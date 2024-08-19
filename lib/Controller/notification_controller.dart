import 'package:alsharqapp/core/Services/Services.dart';
import 'package:alsharqapp/core/functions/handingdatacontroller.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/datasource/remote/notification.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
 NotificationData notificationData = NotificationData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  MyServices myServices =Get.find();

  getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await notificationData.getData(myServices.sharedPreferences.getString("id")!);
    // ignore: avoid_print
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
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

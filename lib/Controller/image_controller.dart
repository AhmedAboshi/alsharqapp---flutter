
import 'package:alsharqapp/core/functions/handingdatacontroller.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/datasource/imagecare_data.dart';
import 'package:alsharqapp/data/model/imagemodel.dart';
import 'package:get/get.dart';

class ImageCareController extends GetxController {
  ImageCareData imageCareData = ImageCareData(Get.find());

  List data = [];

  late StatusRequest statusRequest;
 late ImageModel imageModel ;
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await imageCareData.getData();
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
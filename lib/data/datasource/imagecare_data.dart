import 'package:alsharqapp/core/class/crud.dart';
import 'package:alsharqapp/linkapi.dart';

class ImageCareData {
  Crud crud;

  ImageCareData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.imaigecareview , {});
    return response.fold((l) => l, (r) => r);
  }
}
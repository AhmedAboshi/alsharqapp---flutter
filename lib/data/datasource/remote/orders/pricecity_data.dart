
import 'package:alsharqapp/core/class/crud.dart';
import 'package:alsharqapp/linkapi.dart';

class PriceCityData {
  Crud crud;

  PriceCityData(this.crud);

  get() async {
    var response = await crud.postData(AppLink.viewpricecity, {});
    return response.fold((l) => l, (r) => r);
  }
 
}
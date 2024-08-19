import 'package:alsharqapp/core/class/crud.dart';
import 'package:alsharqapp/linkapi.dart';

class OrdersPendingData {
  Crud crud;

  OrdersPendingData(this.crud);

  getData(String usersid) async {
    var response = await crud.postData(AppLink.orderspending, {
      "id" : usersid

    });
    return response.fold((l) => l, (r) => r);
  }
  deleteData(String ordersid) async {
    var response = await crud.postData(AppLink.deleteorders, {
      "id" : ordersid

    });
    return response.fold((l) => l, (r) => r);
  }
}
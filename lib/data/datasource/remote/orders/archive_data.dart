import 'package:alsharqapp/core/class/crud.dart';
import 'package:alsharqapp/linkapi.dart';

class OrdersArchiveData {
  Crud crud;

  OrdersArchiveData(this.crud);

  getData(String usersid) async {
    var response = await crud.postData(AppLink.archiveorders, {
      "id" : usersid

    });
    return response.fold((l) => l, (r) => r);
  }
  ratingData(String ordersid , String comment , String rating) async {
    var response = await crud.postData(AppLink.rating, {
      "id" : ordersid , 
      "rating" : rating ,
      "comment" : comment ,

    });
    return response.fold((l) => l, (r) => r);
  }
}
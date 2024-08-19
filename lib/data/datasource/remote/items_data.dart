import 'package:alsharqapp/core/class/crud.dart';
import 'package:alsharqapp/linkapi.dart';

class ItemsData {
  Crud crud;

  ItemsData(this.crud);

  getData(String ?id , String usersid) async {
    var response = await crud.postData(AppLink.items, {"id": id.toString(), "usersid": usersid});
    return response.fold((l) => l, (r) => r);
  }
}
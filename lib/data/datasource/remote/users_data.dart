import 'package:alsharqapp/core/class/crud.dart';
import 'package:alsharqapp/linkapi.dart';

class UsersData {
  Crud crud;

  UsersData(this.crud);

  get() async {
    var response = await crud.postData(AppLink.viewusers, {});
    return response.fold((l) => l, (r) => r);
  }

 

}

import 'package:alsharqapp/core/class/crud.dart';
import 'package:alsharqapp/linkapi.dart';

class CheckEmailData {
  Crud crud;

  CheckEmailData(this.crud);

  postdate(  email ) async {
    var response = await crud.postData(AppLink.checkemail, {
      
      
      "email" : email,
      
    });
    return response.fold((l) => l, (r) => r);
  }
}
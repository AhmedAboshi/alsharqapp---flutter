import 'package:alsharqapp/core/class/crud.dart';
import 'package:alsharqapp/linkapi.dart';

class VerfiyCodeSignUpData {
  Crud crud;
  VerfiyCodeSignUpData(this.crud);
  postdate(String email , String verficode ) async {
    var response = await crud.postData(AppLink.verfiyCodeSignUp, { 
      "email" : email,
      "verficode" : verficode,
    });
    return response.fold((l) => l, (r) => r);
  }

resendData( String email)async{
 var response = await crud.postData(AppLink.reSend, { 
      "email" : email,
      
    });
    return response.fold((l) => l, (r) => r);
}
}
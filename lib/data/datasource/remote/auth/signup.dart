 import 'dart:io';

import 'package:alsharqapp/core/class/crud.dart';
import 'package:alsharqapp/linkapi.dart';

class SignupData {
  Crud crud;

  SignupData(this.crud);

  postdate(Map data , File file) async {
    var response = await crud.addRequestWithImageOne(AppLink.singup, data , file
     
    );
    return response.fold((l) => l, (r) => r);
  }
}
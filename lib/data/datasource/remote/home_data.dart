import 'package:alsharqapp/core/class/crud.dart';
import 'package:alsharqapp/linkapi.dart';

class HomeData {
  Crud crud;

  HomeData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.homeScreen, {});
    return response.fold((l) => l, (r) => r);
  }
  // ignore: non_constant_identifier_names
  SearchData(String search) async {
    var response = await crud.postData(AppLink.searchitems, { "search": search});
    return response.fold((l) => l, (r) => r);
  }
}
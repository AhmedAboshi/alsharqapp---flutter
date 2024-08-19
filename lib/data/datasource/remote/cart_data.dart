import 'package:alsharqapp/core/class/crud.dart';
import 'package:alsharqapp/linkapi.dart';

class CartData {
  Crud crud;

  CartData(this.crud);

  addCart(String usersid, String itemsid) async {
    var response = await crud.postData(AppLink.cartadd, {"usersid":usersid, "itemsid":itemsid});
    return response.fold((l) => l, (r) => r);
  }
  deleteCart(String usersid, String itemsid) async {
    var response = await crud
        .postData(AppLink.cartdelete, {"usersid": usersid, "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }
  getCountCart(String usersid, String itemsid) async {
    var response = await crud.postData(AppLink.getcountitems, {"usersid":usersid, "itemsid":itemsid});
    return response.fold((l) => l, (r) => r);
  }
   viewCart(String usersid) async {
    var response = await crud.postData(AppLink.cartview, {"usersid":usersid});
    return response.fold((l) => l, (r) => r);
  }
  checkCoupon( String couponname) async{
    var response = await crud.postData(AppLink.checkcoupon, {"couponname":couponname});
    return response.fold((l) => l, (r) => r);
  }
}
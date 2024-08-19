class OrdersModel {
  String? ordersId;
  String? ordersUsersid;
  String? ordersAddress;
  String? ordersPricedelivery;
  String? ordersPrice;
  String? ordersTotalprice;
  String? ordersCoupon;
  String? ordersRading;
  String? ordersNoterading;
  String? ordersPaymentmethode;
  String? ordersStutas;
  String? ordersDatetime;
  String? ordersDelivery;
  String? ordersCityup;
  String? ordersCitydown;
  String? ordersTyapetrack;
  String? ordersCarusers;
  String? ordersPhone;
  String? addressId;
  String? addressUsersid;
  String? addressName;
  String? addressCity;
  String? addressStreet;
  String? addressLat;
  String? addressLong;

  OrdersModel(
      {this.ordersId,
      this.ordersUsersid,
      this.ordersAddress,
      this.ordersPricedelivery,
      this.ordersPrice,
      this.ordersTotalprice,
      this.ordersCoupon,
      this.ordersRading,
      this.ordersNoterading,
      this.ordersPaymentmethode,
      this.ordersStutas,
      this.ordersDatetime,
      this.ordersDelivery,
      this.ordersCityup,
      this.ordersCitydown,
      this.ordersTyapetrack,
      this.ordersCarusers,
      this.ordersPhone,
      this.addressId,
      this.addressUsersid,
      this.addressName,
      this.addressCity,
      this.addressStreet,
      this.addressLat,
      this.addressLong});

  OrdersModel.fromJson(Map<String, dynamic> json) {
    ordersId = json['orders_id'];
    ordersUsersid = json['orders_usersid'];
    ordersAddress = json['orders_address'];
    ordersPricedelivery = json['orders_pricedelivery'];
    ordersPrice = json['orders_price'];
    ordersTotalprice = json['orders_totalprice'];
    ordersCoupon = json['orders_coupon'];
    ordersRading = json['orders_rading'];
    ordersNoterading = json['orders_noterading'];
    ordersPaymentmethode = json['orders_paymentmethode'];
    ordersStutas = json['orders_stutas'];
    ordersDatetime = json['orders_datetime'];
    ordersDelivery = json['orders_delivery'];
    ordersCityup = json['orders_cityup'];
    ordersCitydown = json['orders_citydown'];
    ordersTyapetrack = json['orders_tyapetrack'];
    ordersCarusers = json['orders_carusers'];
    ordersPhone = json['orders_phone'];
    addressId = json['address_id'];
    addressUsersid = json['address_usersid'];
    addressName = json['address_name'];
    addressCity = json['address_city'];
    addressStreet = json['address_street'];
    addressLat = json['address_lat'];
    addressLong = json['address_long'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['orders_id'] = this.ordersId;
    data['orders_usersid'] = this.ordersUsersid;
    data['orders_address'] = this.ordersAddress;
    data['orders_pricedelivery'] = this.ordersPricedelivery;
    data['orders_price'] = this.ordersPrice;
    data['orders_totalprice'] = this.ordersTotalprice;
    data['orders_coupon'] = this.ordersCoupon;
    data['orders_rading'] = this.ordersRading;
    data['orders_noterading'] = this.ordersNoterading;
    data['orders_paymentmethode'] = this.ordersPaymentmethode;
    data['orders_stutas'] = this.ordersStutas;
    data['orders_datetime'] = this.ordersDatetime;
    data['orders_delivery'] = this.ordersDelivery;
    data['orders_cityup'] = this.ordersCityup;
    data['orders_citydown'] = this.ordersCitydown;
    data['orders_tyapetrack'] = this.ordersTyapetrack;
    data['orders_carusers'] = this.ordersCarusers;
    data['orders_phone'] = this.ordersPhone;
    data['address_id'] = this.addressId;
    data['address_usersid'] = this.addressUsersid;
    data['address_name'] = this.addressName;
    data['address_city'] = this.addressCity;
    data['address_street'] = this.addressStreet;
    data['address_lat'] = this.addressLat;
    data['address_long'] = this.addressLong;
    return data;
  }
}

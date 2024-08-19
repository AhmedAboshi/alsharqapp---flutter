class CouponModel {
  String? couponName;
  String? couponId;
  String? couponCount;
  String? couponDiscount;
  String? couponExpirationdate;

  CouponModel(
      {this.couponName,
      this.couponId,
      this.couponCount,
      this.couponDiscount,
      this.couponExpirationdate});

  CouponModel.fromJson(Map<String, dynamic> json) {
    couponName = json['coupon_name'];
    couponId = json['coupon_id'];
    couponCount = json['coupon_count'];
    couponDiscount = json['coupon_discount'];
    couponExpirationdate = json['coupon_expirationdate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['coupon_name'] = this.couponName;
    data['coupon_id'] = this.couponId;
    data['coupon_count'] = this.couponCount;
    data['coupon_discount'] = this.couponDiscount;
    data['coupon_expirationdate'] = this.couponExpirationdate;
    return data;
  }
}
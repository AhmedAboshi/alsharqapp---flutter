class Pricecitymodel {
  String? priceId;
  String? cityup;
  String? citytyapAr;
  String? citydown;
  String? citydownAr;
  String? tyapetrack;
  String? tyapetrackAr;
  String? priceTotle;

  Pricecitymodel(
      {this.priceId,
      this.cityup,
      this.citytyapAr,
      this.citydown,
      this.citydownAr,
      this.tyapetrack,
      this.tyapetrackAr,
      this.priceTotle});

  Pricecitymodel.fromJson(Map<String, dynamic> json) {
    priceId = json['price_id'];
    cityup = json['cityup'];
    citytyapAr = json['citytyap_ar'];
    citydown = json['citydown'];
    citydownAr = json['citydown_ar'];
    tyapetrack = json['tyapetrack'];
    tyapetrackAr = json['tyapetrack_ar'];
    priceTotle = json['price_totle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price_id'] = this.priceId;
    data['cityup'] = this.cityup;
    data['citytyap_ar'] = this.citytyapAr;
    data['citydown'] = this.citydown;
    data['citydown_ar'] = this.citydownAr;
    data['tyapetrack'] = this.tyapetrack;
    data['tyapetrack_ar'] = this.tyapetrackAr;
    data['price_totle'] = this.priceTotle;
    return data;
  }
}
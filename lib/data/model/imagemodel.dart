 class ImageModel {
  String? imagecareId;
  String? imagecareName;
  String? imagecareImage;
  String? imagecareCat;

  ImageModel(
      {this.imagecareId,
      this.imagecareName,
      this.imagecareImage,
      this.imagecareCat});

  ImageModel.fromJson(Map<String, dynamic> json) {
    imagecareId = json['imagecare_id'];
    imagecareName = json['imagecare_name'];
    imagecareImage = json['imagecare_image'];
    imagecareCat = json['imagecare_cat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imagecare_id'] = this.imagecareId;
    data['imagecare_name'] = this.imagecareName;
    data['imagecare_image'] = this.imagecareImage;
    data['imagecare_cat'] = this.imagecareCat;
    return data;
  }
}
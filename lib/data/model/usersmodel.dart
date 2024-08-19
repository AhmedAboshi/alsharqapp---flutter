class UsersModel {
  String? usersId;
  String? usersName;
  String? usersEmail;
  String? usersPassword;
  String? usersPhone;
  String? usersAprofe;
  String? usersCreate;
  String? usersVerficode;
  String? usersImage;

  UsersModel(
      {this.usersId,
      this.usersName,
      this.usersEmail,
      this.usersPassword,
      this.usersPhone,
      this.usersAprofe,
      this.usersCreate,
      this.usersVerficode,
      this.usersImage});

  UsersModel.fromJson(Map<String, dynamic> json) {
    usersId = json['users_id'];
    usersName = json['users_name'];
    usersEmail = json['users_email'];
    usersPassword = json['users_password'];
    usersPhone = json['users_phone'];
    usersAprofe = json['users_aprofe'];
    usersCreate = json['users_create'];
    usersVerficode = json['users_verficode'];
    usersImage = json['users_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['users_id'] = this.usersId;
    data['users_name'] = this.usersName;
    data['users_email'] = this.usersEmail;
    data['users_password'] = this.usersPassword;
    data['users_phone'] = this.usersPhone;
    data['users_aprofe'] = this.usersAprofe;
    data['users_create'] = this.usersCreate;
    data['users_verficode'] = this.usersVerficode;
    data['users_image'] = this.usersImage;
    return data;
  }
}
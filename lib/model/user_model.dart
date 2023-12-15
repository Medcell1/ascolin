class UserModel {
  String? id;
  String? phone;
  String? type;
  String? email;
  String? password;

  UserModel({this.id, this.phone, this.type, this.email, this.password});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    phone = json['phone'];
    type = json['type'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.id;
    data['phone'] = this.phone;
    data['type'] = this.type;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}

// import 'package:provider/provider.dart';

class UserModel {
  int? id;
  String? name;
  String? email;
  String? username;
  String? profilePhothoUrl;
  String? token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.username,
    this.profilePhothoUrl,
    this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    profilePhothoUrl = json['profile_photo_url'];
    token = json['token'];
  }

  //ubah ke bentuk json
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profile_photo_url': profilePhothoUrl,
      'token': token,
    };
  }
}

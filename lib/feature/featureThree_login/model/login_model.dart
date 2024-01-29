import 'package:flutter/cupertino.dart';

class LoginModel {
  List<User>? user;
  int? expiredAt;
  Token? token;

  LoginModel({this.user, this.expiredAt, this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    if (json['user'] != null) {
      user = <User>[];
      json['user'].forEach((v) {
        user!.add(User.fromJson(v));
      });
    }
    expiredAt = json['expired_at'];
    token = json['token'] != null ? Token.fromJson(json['token']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (user != null) {
      data['user'] = user!.map((v) => v.toJson()).toList();
    }
    data['expired_at'] = expiredAt;
    if (token != null) {
      data['token'] = token!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? type;
  int? notify;
  String? notificationOne;
  String? notificationTwo;
  int? appUseCount;
  int? status;
  String? createdAt;

  User(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.type,
      this.notify,
      this.notificationOne,
      this.notificationTwo,
      this.appUseCount,
      this.status,
      this.createdAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    type = json['type'];
    notify = json['notify'];
    notificationOne = json['notification_one'];
    notificationTwo = json['notification_two'];
    appUseCount = json['app_use_count'];
    status = json['status'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['email'] = email;
    data['type'] = type;
    data['notify'] = notify;
    data['notification_one'] = notificationOne;
    data['notification_two'] = notificationTwo;
    data['app_use_count'] = appUseCount;
    data['status'] = status;
    data['created_at'] = createdAt;
    return data;
  }
}

class Token {
  String? token;

  Token({this.token});

  Token.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['token'] = token;
    return data;
  }
}

// extension HistoryBookingExtension on Token {
//   String get chenage  {
//     return print(token);
//   }
//   }
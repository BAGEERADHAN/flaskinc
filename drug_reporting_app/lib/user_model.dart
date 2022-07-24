// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    UserModel({
       required this.spam,
        required this.accusedDetail,
        required this.addressLocation,
     required   this.detailedDesc,
        required this.id,
       required this.severity,
      required  this.shortDesc,
       required this.time,
       required this.typeDrug,
    });

    String spam;
    String accusedDetail;
    String addressLocation;
    String detailedDesc;
    int id;
    String severity;
    String shortDesc;
    DateTime time;
    String typeDrug;

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        spam: json["spam"],
        accusedDetail: json["accused_detail"],
        addressLocation: json["address_location"],
        detailedDesc: json["detailed_desc"],
        id: json["id"],
        severity: json["severity"],
        shortDesc: json["short_desc"],
        time: DateTime.parse(json["time"]),
        typeDrug: json["type_drug"],
    );

    Map<String, dynamic> toJson() => {
        "spam": spam,
        "accused_detail": accusedDetail,
        "address_location": addressLocation,
        "detailed_desc": detailedDesc,
        "id": id,
        "severity": severity,
        "short_desc": shortDesc,
        "time": time.toIso8601String(),
        "type_drug": typeDrug,
    };
}

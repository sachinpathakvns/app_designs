import 'dart:convert';

List<QrListingData> qrListingDataFromJson(String str) => List<QrListingData>.from(json.decode(str).map((x) => QrListingData.fromJson(x)));

String qrListingDataToJson(List<QrListingData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class QrListingData {
  String? id;
  String? qrId;
  String? name;
  String? description;
  int? warranty;
  int? points;
  String? redeemedBy;
  bool? redeemed;
  String? generatedBy;
  dynamic deletedAt;
  int? v;
  DateTime? createdAt;
  DateTime? updatedAt;
  RedeemedByUser? redeemedByUser;

  QrListingData({
    this.id,
    this.qrId,
    this.name,
    this.description,
    this.warranty,
    this.points,
    this.redeemedBy,
    this.redeemed,
    this.generatedBy,
    this.deletedAt,
    this.v,
    this.createdAt,
    this.updatedAt,
    this.redeemedByUser,
  });

  factory QrListingData.fromJson(Map<String, dynamic> json) => QrListingData(
    id: json["_id"],
    qrId: json["qrId"],
    name: json["name"],
    description: json["description"],
    warranty: json["warranty"],
    points: json["points"],
    redeemedBy: json["redeemedBy"],
    redeemed: json["redeemed"],
    generatedBy: json["generatedBy"],
    deletedAt: json["deletedAt"],
    v: json["__v"],
    // createdAt: DateTime.parse(json["createdAt"]),
    // updatedAt: DateTime.parse(json["updatedAt"]),
    // redeemedByUser: RedeemedByUser.fromJson(json["redeemedByUser"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "qrId": qrId,
    "name": name,
    "description": description,
    "warranty": warranty,
    "points": points,
    "redeemedBy": redeemedBy,
    "redeemed": redeemed,
    "generatedBy": generatedBy,
    "deletedAt": deletedAt,
    "__v": v,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "redeemedByUser": redeemedByUser?.toJson(),
  };
}

class RedeemedByUser {
  String? id;
  dynamic userName;
  dynamic fullName;
  String? email;

  RedeemedByUser({
    this.id,
    this.userName,
    this.fullName,
    this.email,
  });

  factory RedeemedByUser.fromJson(Map<String, dynamic> json) => RedeemedByUser(
    id: json["_id"],
    userName: json["userName"],
    fullName: json["fullName"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "userName": userName,
    "fullName": fullName,
    "email": email,
  };
}

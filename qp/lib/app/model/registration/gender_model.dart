// To parse this JSON data, do
//
//     final genderModel = genderModelFromJson(jsonString);

import 'dart:convert';

GenderModel genderModelFromJson(String str) => GenderModel.fromJson(json.decode(str));

String genderModelToJson(GenderModel data) => json.encode(data.toJson());

class GenderModel {
  int? status;
  List<AllGender>? allGender;

  GenderModel({
    this.status,
    this.allGender,
  });

  GenderModel copyWith({
    int? status,
    List<AllGender>? allGender,
  }) =>
      GenderModel(
        status: status ?? this.status,
        allGender: allGender ?? this.allGender,
      );

  factory GenderModel.fromJson(Map<String, dynamic> json) => GenderModel(
    status: json["status"],
    allGender: json["allGender"] == null ? [] : List<AllGender>.from(json["allGender"]!.map((x) => AllGender.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "allGender": allGender == null ? [] : List<dynamic>.from(allGender!.map((x) => x.toJson())),
  };
}

class AllGender {
  String? id;
  String? genderName;
  dynamic dataStatus;
  dynamic ipAddress;
  dynamic createdBy;
  dynamic updateBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  AllGender({
    this.id,
    this.genderName,
    this.dataStatus,
    this.ipAddress,
    this.createdBy,
    this.updateBy,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  AllGender copyWith({
    String? id,
    String? genderName,
    dynamic dataStatus,
    dynamic ipAddress,
    dynamic createdBy,
    dynamic updateBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) =>
      AllGender(
        id: id ?? this.id,
        genderName: genderName ?? this.genderName,
        dataStatus: dataStatus ?? this.dataStatus,
        ipAddress: ipAddress ?? this.ipAddress,
        createdBy: createdBy ?? this.createdBy,
        updateBy: updateBy ?? this.updateBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
      );

  factory AllGender.fromJson(Map<String, dynamic> json) => AllGender(
    id: json["_id"],
    genderName: json["gender_name"],
    dataStatus: json["data_status"],
    ipAddress: json["ip_address"],
    createdBy: json["created_by"],
    updateBy: json["update_by"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "gender_name": genderName,
    "data_status": dataStatus,
    "ip_address": ipAddress,
    "created_by": createdBy,
    "update_by": updateBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

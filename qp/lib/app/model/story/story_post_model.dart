// To parse this JSON data, do
//
//     final storyPostModel = storyPostModelFromJson(jsonString);

import 'dart:convert';

StoryPostModel storyPostModelFromJson(String str) => StoryPostModel.fromJson(json.decode(str));

String storyPostModelToJson(StoryPostModel data) => json.encode(data.toJson());

class StoryPostModel {
  String? message;
  int? status;

  StoryPostModel({
    this.message,
    this.status,
  });

  StoryPostModel copyWith({
    String? message,
    int? status,
  }) =>
      StoryPostModel(
        message: message ?? this.message,
        status: status ?? this.status,
      );

  factory StoryPostModel.fromJson(Map<String, dynamic> json) => StoryPostModel(
    message: json["message"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "status": status,
  };
}

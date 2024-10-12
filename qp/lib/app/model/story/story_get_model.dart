// To parse this JSON data, do
//
//     final storyGetModel = storyGetModelFromJson(jsonString);

import 'dart:convert';

StoryGetModel storyGetModelFromJson(String str) => StoryGetModel.fromJson(json.decode(str));

String storyGetModelToJson(StoryGetModel data) => json.encode(data.toJson());

class StoryGetModel {
  String? message;
  int? status;
  List<Result>? results;

  StoryGetModel({
    this.message,
    this.status,
    this.results,
  });

  StoryGetModel copyWith({
    String? message,
    int? status,
    List<Result>? results,
  }) =>
      StoryGetModel(
        message: message ?? this.message,
        status: status ?? this.status,
        results: results ?? this.results,
      );

  factory StoryGetModel.fromJson(Map<String, dynamic> json) => StoryGetModel(
    message: json["message"],
    status: json["status"],
    results: json["results"] == null ? [] : List<Result>.from(json["results"]!.map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "status": status,
    "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toJson())),
  };
}

class Result {
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? emailPrivacy;
  String? dateOfBirthShowType;
  String? phone;
  dynamic country;
  bool? isProfileVerified;
  String? password;
  dynamic profilePic;
  dynamic coverPic;
  dynamic userStatus;
  String? gender;
  dynamic religion;
  DateTime? dateOfBirth;
  dynamic userBio;
  dynamic passport;
  DateTime? lastLogin;
  dynamic user2FaStatus;
  dynamic secondaryEmail;
  dynamic recoveryEmail;
  dynamic relationStatus;
  dynamic homeTown;
  dynamic birthPlace;
  dynamic bloodGroup;
  dynamic websites;
  dynamic userNickname;
  dynamic userAbout;
  dynamic presentTown;
  dynamic otp;
  dynamic resetPasswordToken;
  dynamic resetPasswordTokenExpires;
  dynamic userRole;
  dynamic lockProfile;
  bool? turnOnEarningDashboard;
  String? status;
  dynamic inactivationNote;
  String? ipAddress;
  dynamic createdBy;
  dynamic updateBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  List<Story>? stories;

  Result({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.emailPrivacy,
    this.dateOfBirthShowType,
    this.phone,
    this.country,
    this.isProfileVerified,
    this.password,
    this.profilePic,
    this.coverPic,
    this.userStatus,
    this.gender,
    this.religion,
    this.dateOfBirth,
    this.userBio,
    this.passport,
    this.lastLogin,
    this.user2FaStatus,
    this.secondaryEmail,
    this.recoveryEmail,
    this.relationStatus,
    this.homeTown,
    this.birthPlace,
    this.bloodGroup,
    this.websites,
    this.userNickname,
    this.userAbout,
    this.presentTown,
    this.otp,
    this.resetPasswordToken,
    this.resetPasswordTokenExpires,
    this.userRole,
    this.lockProfile,
    this.turnOnEarningDashboard,
    this.status,
    this.inactivationNote,
    this.ipAddress,
    this.createdBy,
    this.updateBy,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.stories,
  });

  Result copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? username,
    String? email,
    String? emailPrivacy,
    String? dateOfBirthShowType,
    String? phone,
    dynamic country,
    bool? isProfileVerified,
    String? password,
    dynamic profilePic,
    dynamic coverPic,
    dynamic userStatus,
    String? gender,
    dynamic religion,
    DateTime? dateOfBirth,
    dynamic userBio,
    dynamic passport,
    DateTime? lastLogin,
    dynamic user2FaStatus,
    dynamic secondaryEmail,
    dynamic recoveryEmail,
    dynamic relationStatus,
    dynamic homeTown,
    dynamic birthPlace,
    dynamic bloodGroup,
    dynamic websites,
    dynamic userNickname,
    dynamic userAbout,
    dynamic presentTown,
    dynamic otp,
    dynamic resetPasswordToken,
    dynamic resetPasswordTokenExpires,
    dynamic userRole,
    dynamic lockProfile,
    bool? turnOnEarningDashboard,
    String? status,
    dynamic inactivationNote,
    String? ipAddress,
    dynamic createdBy,
    dynamic updateBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    List<Story>? stories,
  }) =>
      Result(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        username: username ?? this.username,
        email: email ?? this.email,
        emailPrivacy: emailPrivacy ?? this.emailPrivacy,
        dateOfBirthShowType: dateOfBirthShowType ?? this.dateOfBirthShowType,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        isProfileVerified: isProfileVerified ?? this.isProfileVerified,
        password: password ?? this.password,
        profilePic: profilePic ?? this.profilePic,
        coverPic: coverPic ?? this.coverPic,
        userStatus: userStatus ?? this.userStatus,
        gender: gender ?? this.gender,
        religion: religion ?? this.religion,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        userBio: userBio ?? this.userBio,
        passport: passport ?? this.passport,
        lastLogin: lastLogin ?? this.lastLogin,
        user2FaStatus: user2FaStatus ?? this.user2FaStatus,
        secondaryEmail: secondaryEmail ?? this.secondaryEmail,
        recoveryEmail: recoveryEmail ?? this.recoveryEmail,
        relationStatus: relationStatus ?? this.relationStatus,
        homeTown: homeTown ?? this.homeTown,
        birthPlace: birthPlace ?? this.birthPlace,
        bloodGroup: bloodGroup ?? this.bloodGroup,
        websites: websites ?? this.websites,
        userNickname: userNickname ?? this.userNickname,
        userAbout: userAbout ?? this.userAbout,
        presentTown: presentTown ?? this.presentTown,
        otp: otp ?? this.otp,
        resetPasswordToken: resetPasswordToken ?? this.resetPasswordToken,
        resetPasswordTokenExpires: resetPasswordTokenExpires ?? this.resetPasswordTokenExpires,
        userRole: userRole ?? this.userRole,
        lockProfile: lockProfile ?? this.lockProfile,
        turnOnEarningDashboard: turnOnEarningDashboard ?? this.turnOnEarningDashboard,
        status: status ?? this.status,
        inactivationNote: inactivationNote ?? this.inactivationNote,
        ipAddress: ipAddress ?? this.ipAddress,
        createdBy: createdBy ?? this.createdBy,
        updateBy: updateBy ?? this.updateBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
        stories: stories ?? this.stories,
      );

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["_id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    username: json["username"],
    email: json["email"],
    emailPrivacy: json["email_privacy"],
    dateOfBirthShowType: json["date_of_birth_show_type"],
    phone: json["phone"],
    country: json["country"],
    isProfileVerified: json["isProfileVerified"],
    password: json["password"],
    profilePic: json["profile_pic"],
    coverPic: json["cover_pic"],
    userStatus: json["user_status"],
    gender: json["gender"],
    religion: json["religion"],
    dateOfBirth: json["date_of_birth"] == null ? null : DateTime.parse(json["date_of_birth"]),
    userBio: json["user_bio"],
    passport: json["passport"],
    lastLogin: json["last_login"] == null ? null : DateTime.parse(json["last_login"]),
    user2FaStatus: json["user_2fa_status"],
    secondaryEmail: json["secondary_email"],
    recoveryEmail: json["recovery_email"],
    relationStatus: json["relation_status"],
    homeTown: json["home_town"],
    birthPlace: json["birth_place"],
    bloodGroup: json["blood_group"],
    websites: json["websites"],
    userNickname: json["user_nickname"],
    userAbout: json["user_about"],
    presentTown: json["present_town"],
    otp: json["otp"],
    resetPasswordToken: json["reset_password_token"],
    resetPasswordTokenExpires: json["reset_password_token_expires"],
    userRole: json["user_role"],
    lockProfile: json["lock_profile"],
    turnOnEarningDashboard: json["turn_on_earning_dashboard"],
    status: json["status"],
    inactivationNote: json["inactivation_note"],
    ipAddress: json["ip_address"],
    createdBy: json["created_by"],
    updateBy: json["update_by"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    stories: json["stories"] == null ? [] : List<Story>.from(json["stories"]!.map((x) => Story.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "first_name": firstName,
    "last_name": lastName,
    "username": username,
    "email": email,
    "email_privacy": emailPrivacy,
    "date_of_birth_show_type": dateOfBirthShowType,
    "phone": phone,
    "country": country,
    "isProfileVerified": isProfileVerified,
    "password": password,
    "profile_pic": profilePic,
    "cover_pic": coverPic,
    "user_status": userStatus,
    "gender": gender,
    "religion": religion,
    "date_of_birth": dateOfBirth?.toIso8601String(),
    "user_bio": userBio,
    "passport": passport,
    "last_login": lastLogin?.toIso8601String(),
    "user_2fa_status": user2FaStatus,
    "secondary_email": secondaryEmail,
    "recovery_email": recoveryEmail,
    "relation_status": relationStatus,
    "home_town": homeTown,
    "birth_place": birthPlace,
    "blood_group": bloodGroup,
    "websites": websites,
    "user_nickname": userNickname,
    "user_about": userAbout,
    "present_town": presentTown,
    "otp": otp,
    "reset_password_token": resetPasswordToken,
    "reset_password_token_expires": resetPasswordTokenExpires,
    "user_role": userRole,
    "lock_profile": lockProfile,
    "turn_on_earning_dashboard": turnOnEarningDashboard,
    "status": status,
    "inactivation_note": inactivationNote,
    "ip_address": ipAddress,
    "created_by": createdBy,
    "update_by": updateBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
    "stories": stories == null ? [] : List<dynamic>.from(stories!.map((x) => x.toJson())),
  };
}

class Story {
  String? id;
  String? title;
  dynamic color;
  dynamic textColor;
  dynamic fontFamily;
  dynamic fontSize;
  String? media;
  dynamic textPosition;
  dynamic textAlignment;
  String? userId;
  dynamic privacyId;
  String? privacy;
  dynamic status;
  dynamic locationId;
  dynamic feelingId;
  dynamic activityId;
  dynamic subActivityId;
  dynamic ipAddress;
  dynamic createdBy;
  dynamic updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? storyId;
  int? viewersCount;
  List<dynamic>? viewersList;

  Story({
    this.id,
    this.title,
    this.color,
    this.textColor,
    this.fontFamily,
    this.fontSize,
    this.media,
    this.textPosition,
    this.textAlignment,
    this.userId,
    this.privacyId,
    this.privacy,
    this.status,
    this.locationId,
    this.feelingId,
    this.activityId,
    this.subActivityId,
    this.ipAddress,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.storyId,
    this.viewersCount,
    this.viewersList,
  });

  Story copyWith({
    String? id,
    String? title,
    dynamic color,
    dynamic textColor,
    dynamic fontFamily,
    dynamic fontSize,
    String? media,
    dynamic textPosition,
    dynamic textAlignment,
    String? userId,
    dynamic privacyId,
    String? privacy,
    dynamic status,
    dynamic locationId,
    dynamic feelingId,
    dynamic activityId,
    dynamic subActivityId,
    dynamic ipAddress,
    dynamic createdBy,
    dynamic updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    String? storyId,
    int? viewersCount,
    List<dynamic>? viewersList,
  }) =>
      Story(
        id: id ?? this.id,
        title: title ?? this.title,
        color: color ?? this.color,
        textColor: textColor ?? this.textColor,
        fontFamily: fontFamily ?? this.fontFamily,
        fontSize: fontSize ?? this.fontSize,
        media: media ?? this.media,
        textPosition: textPosition ?? this.textPosition,
        textAlignment: textAlignment ?? this.textAlignment,
        userId: userId ?? this.userId,
        privacyId: privacyId ?? this.privacyId,
        privacy: privacy ?? this.privacy,
        status: status ?? this.status,
        locationId: locationId ?? this.locationId,
        feelingId: feelingId ?? this.feelingId,
        activityId: activityId ?? this.activityId,
        subActivityId: subActivityId ?? this.subActivityId,
        ipAddress: ipAddress ?? this.ipAddress,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
        storyId: storyId ?? this.storyId,
        viewersCount: viewersCount ?? this.viewersCount,
        viewersList: viewersList ?? this.viewersList,
      );

  factory Story.fromJson(Map<String, dynamic> json) => Story(
    id: json["_id"],
    title: json["title"],
    color: json["color"],
    textColor: json["text_color"],
    fontFamily: json["font_family"],
    fontSize: json["font_size"],
    media: json["media"],
    textPosition: json["text_position"],
    textAlignment: json["text_alignment"],
    userId: json["user_id"],
    privacyId: json["privacy_id"],
    privacy: json["privacy"],
    status: json["status"],
    locationId: json["location_id"],
    feelingId: json["feeling_id"],
    activityId: json["activity_id"],
    subActivityId: json["sub_activity_id"],
    ipAddress: json["ip_address"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    storyId: json["id"],
    viewersCount: json["viewersCount"],
    viewersList: json["viewersList"] == null ? [] : List<dynamic>.from(json["viewersList"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "title": title,
    "color": color,
    "text_color": textColor,
    "font_family": fontFamily,
    "font_size": fontSize,
    "media": media,
    "text_position": textPosition,
    "text_alignment": textAlignment,
    "user_id": userId,
    "privacy_id": privacyId,
    "privacy": privacy,
    "status": status,
    "location_id": locationId,
    "feeling_id": feelingId,
    "activity_id": activityId,
    "sub_activity_id": subActivityId,
    "ip_address": ipAddress,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
    "id": storyId,
    "viewersCount": viewersCount,
    "viewersList": viewersList == null ? [] : List<dynamic>.from(viewersList!.map((x) => x)),
  };
}

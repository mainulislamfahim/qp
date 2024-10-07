// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  int? status;
  User? user;
  String? accessToken;
  String? refreshToken;
  String? message;

  LoginModel({
    this.status,
    this.user,
    this.accessToken,
    this.refreshToken,
    this.message,
  });

  LoginModel copyWith({
    int? status,
    User? user,
    String? accessToken,
    String? refreshToken,
    String? message,
  }) =>
      LoginModel(
        status: status ?? this.status,
        user: user ?? this.user,
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
        message: message ?? this.message,
      );

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    status: json["status"],
    user: json["user"] == null ? null : User.fromJson(json["user"]),
    accessToken: json["accessToken"],
    refreshToken: json["refreshToken"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "user": user?.toJson(),
    "accessToken": accessToken,
    "refreshToken": refreshToken,
    "message": message,
  };
}

class User {
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? phone;
  String? profilePic;
  String? coverPic;
  dynamic userStatus;
  Gender? gender;
  Gender? religion;
  DateTime? dateOfBirth;
  String? userBio;
  dynamic language;
  dynamic passport;
  DateTime? lastLogin;
  dynamic user2FaStatus;
  dynamic secondaryEmail;
  dynamic recoveryEmail;
  String? relationStatus;
  String? homeTown;
  String? birthPlace;
  dynamic bloodGroup;
  String? resetPasswordToken;
  String? resetPasswordTokenExpires;
  dynamic userRole;
  String? status;
  dynamic ipAddress;
  dynamic createdBy;
  dynamic updateBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? lockProfile;
  List<String>? emailList;
  List<dynamic>? phoneList;
  String? userAbout;
  String? userNickname;
  String? presentTown;
  bool? turnOnEarningDashboard;
  String? dateOfBirthShowType;
  String? emailPrivacy;
  bool? isProfileVerified;
  String? inactivationNote;
  String? fullName;

  User({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.phone,
    this.profilePic,
    this.coverPic,
    this.userStatus,
    this.gender,
    this.religion,
    this.dateOfBirth,
    this.userBio,
    this.language,
    this.passport,
    this.lastLogin,
    this.user2FaStatus,
    this.secondaryEmail,
    this.recoveryEmail,
    this.relationStatus,
    this.homeTown,
    this.birthPlace,
    this.bloodGroup,
    this.resetPasswordToken,
    this.resetPasswordTokenExpires,
    this.userRole,
    this.status,
    this.ipAddress,
    this.createdBy,
    this.updateBy,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.lockProfile,
    this.emailList,
    this.phoneList,
    this.userAbout,
    this.userNickname,
    this.presentTown,
    this.turnOnEarningDashboard,
    this.dateOfBirthShowType,
    this.emailPrivacy,
    this.isProfileVerified,
    this.inactivationNote,
    this.fullName,
  });

  User copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? username,
    String? email,
    String? phone,
    String? profilePic,
    String? coverPic,
    dynamic userStatus,
    Gender? gender,
    Gender? religion,
    DateTime? dateOfBirth,
    String? userBio,
    dynamic language,
    dynamic passport,
    DateTime? lastLogin,
    dynamic user2FaStatus,
    dynamic secondaryEmail,
    dynamic recoveryEmail,
    String? relationStatus,
    String? homeTown,
    String? birthPlace,
    dynamic bloodGroup,
    String? resetPasswordToken,
    String? resetPasswordTokenExpires,
    dynamic userRole,
    String? status,
    dynamic ipAddress,
    dynamic createdBy,
    dynamic updateBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    String? lockProfile,
    List<String>? emailList,
    List<dynamic>? phoneList,
    String? userAbout,
    String? userNickname,
    String? presentTown,
    bool? turnOnEarningDashboard,
    String? dateOfBirthShowType,
    String? emailPrivacy,
    bool? isProfileVerified,
    String? inactivationNote,
    String? fullName,
  }) =>
      User(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        username: username ?? this.username,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        profilePic: profilePic ?? this.profilePic,
        coverPic: coverPic ?? this.coverPic,
        userStatus: userStatus ?? this.userStatus,
        gender: gender ?? this.gender,
        religion: religion ?? this.religion,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        userBio: userBio ?? this.userBio,
        language: language ?? this.language,
        passport: passport ?? this.passport,
        lastLogin: lastLogin ?? this.lastLogin,
        user2FaStatus: user2FaStatus ?? this.user2FaStatus,
        secondaryEmail: secondaryEmail ?? this.secondaryEmail,
        recoveryEmail: recoveryEmail ?? this.recoveryEmail,
        relationStatus: relationStatus ?? this.relationStatus,
        homeTown: homeTown ?? this.homeTown,
        birthPlace: birthPlace ?? this.birthPlace,
        bloodGroup: bloodGroup ?? this.bloodGroup,
        resetPasswordToken: resetPasswordToken ?? this.resetPasswordToken,
        resetPasswordTokenExpires: resetPasswordTokenExpires ?? this.resetPasswordTokenExpires,
        userRole: userRole ?? this.userRole,
        status: status ?? this.status,
        ipAddress: ipAddress ?? this.ipAddress,
        createdBy: createdBy ?? this.createdBy,
        updateBy: updateBy ?? this.updateBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
        lockProfile: lockProfile ?? this.lockProfile,
        emailList: emailList ?? this.emailList,
        phoneList: phoneList ?? this.phoneList,
        userAbout: userAbout ?? this.userAbout,
        userNickname: userNickname ?? this.userNickname,
        presentTown: presentTown ?? this.presentTown,
        turnOnEarningDashboard: turnOnEarningDashboard ?? this.turnOnEarningDashboard,
        dateOfBirthShowType: dateOfBirthShowType ?? this.dateOfBirthShowType,
        emailPrivacy: emailPrivacy ?? this.emailPrivacy,
        isProfileVerified: isProfileVerified ?? this.isProfileVerified,
        inactivationNote: inactivationNote ?? this.inactivationNote,
        fullName: fullName ?? this.fullName,
      );

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["_id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    username: json["username"],
    email: json["email"],
    phone: json["phone"],
    profilePic: json["profile_pic"],
    coverPic: json["cover_pic"],
    userStatus: json["user_status"],
    gender: json["gender"] == null ? null : Gender.fromJson(json["gender"]),
    religion: json["religion"] == null ? null : Gender.fromJson(json["religion"]),
    dateOfBirth: json["date_of_birth"] == null ? null : DateTime.parse(json["date_of_birth"]),
    userBio: json["user_bio"],
    language: json["language"],
    passport: json["passport"],
    lastLogin: json["last_login"] == null ? null : DateTime.parse(json["last_login"]),
    user2FaStatus: json["user_2fa_status"],
    secondaryEmail: json["secondary_email"],
    recoveryEmail: json["recovery_email"],
    relationStatus: json["relation_status"],
    homeTown: json["home_town"],
    birthPlace: json["birth_place"],
    bloodGroup: json["blood_group"],
    resetPasswordToken: json["reset_password_token"],
    resetPasswordTokenExpires: json["reset_password_token_expires"],
    userRole: json["user_role"],
    status: json["status"],
    ipAddress: json["ip_address"],
    createdBy: json["created_by"],
    updateBy: json["update_by"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    lockProfile: json["lock_profile"],
    emailList: json["email_list"] == null ? [] : List<String>.from(json["email_list"]!.map((x) => x)),
    phoneList: json["phone_list"] == null ? [] : List<dynamic>.from(json["phone_list"]!.map((x) => x)),
    userAbout: json["user_about"],
    userNickname: json["user_nickname"],
    presentTown: json["present_town"],
    turnOnEarningDashboard: json["turn_on_earning_dashboard"],
    dateOfBirthShowType: json["date_of_birth_show_type"],
    emailPrivacy: json["email_privacy"],
    isProfileVerified: json["isProfileVerified"],
    inactivationNote: json["inactivation_note"],
    fullName: json["fullName"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "first_name": firstName,
    "last_name": lastName,
    "username": username,
    "email": email,
    "phone": phone,
    "profile_pic": profilePic,
    "cover_pic": coverPic,
    "user_status": userStatus,
    "gender": gender?.toJson(),
    "religion": religion?.toJson(),
    "date_of_birth": dateOfBirth?.toIso8601String(),
    "user_bio": userBio,
    "language": language,
    "passport": passport,
    "last_login": lastLogin?.toIso8601String(),
    "user_2fa_status": user2FaStatus,
    "secondary_email": secondaryEmail,
    "recovery_email": recoveryEmail,
    "relation_status": relationStatus,
    "home_town": homeTown,
    "birth_place": birthPlace,
    "blood_group": bloodGroup,
    "reset_password_token": resetPasswordToken,
    "reset_password_token_expires": resetPasswordTokenExpires,
    "user_role": userRole,
    "status": status,
    "ip_address": ipAddress,
    "created_by": createdBy,
    "update_by": updateBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
    "lock_profile": lockProfile,
    "email_list": emailList == null ? [] : List<dynamic>.from(emailList!.map((x) => x)),
    "phone_list": phoneList == null ? [] : List<dynamic>.from(phoneList!.map((x) => x)),
    "user_about": userAbout,
    "user_nickname": userNickname,
    "present_town": presentTown,
    "turn_on_earning_dashboard": turnOnEarningDashboard,
    "date_of_birth_show_type": dateOfBirthShowType,
    "email_privacy": emailPrivacy,
    "isProfileVerified": isProfileVerified,
    "inactivation_note": inactivationNote,
    "fullName": fullName,
  };
}

class Gender {
  String? id;
  String? genderName;
  dynamic dataStatus;
  dynamic ipAddress;
  dynamic createdBy;
  dynamic updateBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? religionName;

  Gender({
    this.id,
    this.genderName,
    this.dataStatus,
    this.ipAddress,
    this.createdBy,
    this.updateBy,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.religionName,
  });

  Gender copyWith({
    String? id,
    String? genderName,
    dynamic dataStatus,
    dynamic ipAddress,
    dynamic createdBy,
    dynamic updateBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    String? religionName,
  }) =>
      Gender(
        id: id ?? this.id,
        genderName: genderName ?? this.genderName,
        dataStatus: dataStatus ?? this.dataStatus,
        ipAddress: ipAddress ?? this.ipAddress,
        createdBy: createdBy ?? this.createdBy,
        updateBy: updateBy ?? this.updateBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
        religionName: religionName ?? this.religionName,
      );

  factory Gender.fromJson(Map<String, dynamic> json) => Gender(
    id: json["_id"],
    genderName: json["gender_name"],
    dataStatus: json["data_status"],
    ipAddress: json["ip_address"],
    createdBy: json["created_by"],
    updateBy: json["update_by"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    religionName: json["religion_name"],
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
    "religion_name": religionName,
  };
}

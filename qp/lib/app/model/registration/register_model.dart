// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'dart:convert';

RegisterModel registerModelFromJson(String str) => RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  int? status;
  User? user;
  String? message;

  RegisterModel({
    this.status,
    this.user,
    this.message,
  });

  RegisterModel copyWith({
    int? status,
    User? user,
    String? message,
  }) =>
      RegisterModel(
        status: status ?? this.status,
        user: user ?? this.user,
        message: message ?? this.message,
      );

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
    status: json["status"],
    user: json["user"] == null ? null : User.fromJson(json["user"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "user": user?.toJson(),
    "message": message,
  };
}

class User {
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
  dynamic lastLogin;
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
  dynamic ipAddress;
  dynamic createdBy;
  dynamic updateBy;
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  User({
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
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  User copyWith({
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
    dynamic lastLogin,
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
    dynamic ipAddress,
    dynamic createdBy,
    dynamic updateBy,
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) =>
      User(
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
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
      );

  factory User.fromJson(Map<String, dynamic> json) => User(
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
    lastLogin: json["last_login"],
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
    id: json["_id"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
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
    "last_login": lastLogin,
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
    "_id": id,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

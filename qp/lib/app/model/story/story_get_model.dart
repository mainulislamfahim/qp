import 'dart:convert';

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

  factory StoryGetModel.fromRawJson(String str) => StoryGetModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

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

class ViewersList {
  Result? userId;
  String? username;
  String? firstName;
  String? lastName;
  String? profilePic;
  dynamic status;
  List<Reaction>? reactions;

  ViewersList({
    this.userId,
    this.username,
    this.firstName,
    this.lastName,
    this.profilePic,
    this.status,
    this.reactions,
  });

  ViewersList copyWith({
    Result? userId,
    String? username,
    String? firstName,
    String? lastName,
    String? profilePic,
    dynamic status,
    List<Reaction>? reactions,
  }) =>
      ViewersList(
        userId: userId ?? this.userId,
        username: username ?? this.username,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        profilePic: profilePic ?? this.profilePic,
        status: status ?? this.status,
        reactions: reactions ?? this.reactions,
      );

  factory ViewersList.fromRawJson(String str) => ViewersList.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ViewersList.fromJson(Map<String, dynamic> json) => ViewersList(
    userId: json["user_id"] == null ? null : Result.fromJson(json["user_id"]),
    username: json["username"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    profilePic: json["profile_pic"],
    status: json["status"],
    reactions: json["reactions"] == null ? [] : List<Reaction>.from(json["reactions"]!.map((x) => Reaction.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId?.toJson(),
    "username": username,
    "first_name": firstName,
    "last_name": lastName,
    "profile_pic": profilePic,
    "status": status,
    "reactions": reactions == null ? [] : List<dynamic>.from(reactions!.map((x) => x.toJson())),
  };
}

class Story {
  String? id;
  dynamic title;
  dynamic color;
  dynamic textColor;
  dynamic fontFamily;
  dynamic fontSize;
  String? media;
  dynamic textPosition;
  dynamic textAlignment;
  UserId? userId;
  dynamic privacyId;
  Privacy? privacy;
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
  List<ViewersList>? viewersList;

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
    dynamic title,
    dynamic color,
    dynamic textColor,
    dynamic fontFamily,
    dynamic fontSize,
    String? media,
    dynamic textPosition,
    dynamic textAlignment,
    UserId? userId,
    dynamic privacyId,
    Privacy? privacy,
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
    List<ViewersList>? viewersList,
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

  factory Story.fromRawJson(String str) => Story.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

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
    userId: userIdValues.map[json["user_id"]]!,
    privacyId: json["privacy_id"],
    privacy: privacyValues.map[json["privacy"]]!,
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
    viewersList: json["viewersList"] == null ? [] : List<ViewersList>.from(json["viewersList"]!.map((x) => ViewersList.fromJson(x))),
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
    "user_id": userIdValues.reverse[userId],
    "privacy_id": privacyId,
    "privacy": privacyValues.reverse[privacy],
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
    "viewersList": viewersList == null ? [] : List<dynamic>.from(viewersList!.map((x) => x.toJson())),
  };
}

class Result {
  String? country;
  dynamic websites;
  String? userNickname;
  String? userAbout;
  int? otp;
  String? lockProfile;
  String? inactivationNote;
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? phone;
  String? password;
  String? profilePic;
  String? coverPic;
  dynamic userStatus;
  String? gender;
  String? religion;
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
  String? ipAddress;
  dynamic createdBy;
  dynamic updateBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? presentTown;
  List<String>? emailList;
  List<dynamic>? phoneList;
  bool? turnOnEarningDashboard;
  String? dateOfBirthShowType;
  String? emailPrivacy;
  bool? isProfileVerified;
  List<Story>? stories;

  Result({
    this.country,
    this.websites,
    this.userNickname,
    this.userAbout,
    this.otp,
    this.lockProfile,
    this.inactivationNote,
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.phone,
    this.password,
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
    this.presentTown,
    this.emailList,
    this.phoneList,
    this.turnOnEarningDashboard,
    this.dateOfBirthShowType,
    this.emailPrivacy,
    this.isProfileVerified,
    this.stories,
  });

  Result copyWith({
    String? country,
    dynamic websites,
    String? userNickname,
    String? userAbout,
    int? otp,
    String? lockProfile,
    String? inactivationNote,
    String? id,
    String? firstName,
    String? lastName,
    String? username,
    String? email,
    String? phone,
    String? password,
    String? profilePic,
    String? coverPic,
    dynamic userStatus,
    String? gender,
    String? religion,
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
    String? ipAddress,
    dynamic createdBy,
    dynamic updateBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    String? presentTown,
    List<String>? emailList,
    List<dynamic>? phoneList,
    bool? turnOnEarningDashboard,
    String? dateOfBirthShowType,
    String? emailPrivacy,
    bool? isProfileVerified,
    List<Story>? stories,
  }) =>
      Result(
        country: country ?? this.country,
        websites: websites ?? this.websites,
        userNickname: userNickname ?? this.userNickname,
        userAbout: userAbout ?? this.userAbout,
        otp: otp ?? this.otp,
        lockProfile: lockProfile ?? this.lockProfile,
        inactivationNote: inactivationNote ?? this.inactivationNote,
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        username: username ?? this.username,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        password: password ?? this.password,
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
        presentTown: presentTown ?? this.presentTown,
        emailList: emailList ?? this.emailList,
        phoneList: phoneList ?? this.phoneList,
        turnOnEarningDashboard: turnOnEarningDashboard ?? this.turnOnEarningDashboard,
        dateOfBirthShowType: dateOfBirthShowType ?? this.dateOfBirthShowType,
        emailPrivacy: emailPrivacy ?? this.emailPrivacy,
        isProfileVerified: isProfileVerified ?? this.isProfileVerified,
        stories: stories ?? this.stories,
      );

  factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    country: json["country"],
    websites: json["websites"],
    userNickname: json["user_nickname"],
    userAbout: json["user_about"],
    otp: json["otp"],
    lockProfile: json["lock_profile"],
    inactivationNote: json["inactivation_note"],
    id: json["_id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    username: json["username"],
    email: json["email"],
    phone: json["phone"],
    password: json["password"],
    profilePic: json["profile_pic"],
    coverPic: json["cover_pic"],
    userStatus: json["user_status"],
    gender: json["gender"],
    religion: json["religion"],
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
    presentTown: json["present_town"],
    emailList: json["email_list"] == null ? [] : List<String>.from(json["email_list"]!.map((x) => x)),
    phoneList: json["phone_list"] == null ? [] : List<dynamic>.from(json["phone_list"]!.map((x) => x)),
    turnOnEarningDashboard: json["turn_on_earning_dashboard"],
    dateOfBirthShowType: json["date_of_birth_show_type"],
    emailPrivacy: json["email_privacy"],
    isProfileVerified: json["isProfileVerified"],
    stories: json["stories"] == null ? [] : List<Story>.from(json["stories"]!.map((x) => Story.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "country": country,
    "websites": websites,
    "user_nickname": userNickname,
    "user_about": userAbout,
    "otp": otp,
    "lock_profile": lockProfile,
    "inactivation_note": inactivationNote,
    "_id": id,
    "first_name": firstName,
    "last_name": lastName,
    "username": username,
    "email": email,
    "phone": phone,
    "password": password,
    "profile_pic": profilePic,
    "cover_pic": coverPic,
    "user_status": userStatus,
    "gender": gender,
    "religion": religion,
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
    "present_town": presentTown,
    "email_list": emailList == null ? [] : List<dynamic>.from(emailList!.map((x) => x)),
    "phone_list": phoneList == null ? [] : List<dynamic>.from(phoneList!.map((x) => x)),
    "turn_on_earning_dashboard": turnOnEarningDashboard,
    "date_of_birth_show_type": dateOfBirthShowType,
    "email_privacy": emailPrivacy,
    "isProfileVerified": isProfileVerified,
    "stories": stories == null ? [] : List<dynamic>.from(stories!.map((x) => x.toJson())),
  };
}

class Reaction {
  String? reactionType;

  Reaction({
    this.reactionType,
  });

  Reaction copyWith({
    String? reactionType,
  }) =>
      Reaction(
        reactionType: reactionType ?? this.reactionType,
      );

  factory Reaction.fromRawJson(String str) => Reaction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Reaction.fromJson(Map<String, dynamic> json) => Reaction(
    reactionType: json["reaction_type"],
  );

  Map<String, dynamic> toJson() => {
    "reaction_type": reactionType,
  };
}

enum Privacy {
  PUBLIC
}

final privacyValues = EnumValues({
  "public": Privacy.PUBLIC
});

enum UserId {
  THE_6515_FDBE7_B9_E6_B3_C211_B83_EE,
  THE_6677_B3119_DA81001_D9_B53670,
  THE_6700_F2_D1_FB6699_D08_E0_FFC96
}

final userIdValues = EnumValues({
  "6515fdbe7b9e6b3c211b83ee": UserId.THE_6515_FDBE7_B9_E6_B3_C211_B83_EE,
  "6677b3119da81001d9b53670": UserId.THE_6677_B3119_DA81001_D9_B53670,
  "6700f2d1fb6699d08e0ffc96": UserId.THE_6700_F2_D1_FB6699_D08_E0_FFC96
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

import 'dart:convert';

class PostModel {
  int? status;
  List<Post>? posts;
  int? pageNo;
  int? pageSize;
  int? totalPosts;
  int? pageCount;
  bool? isRetry;

  PostModel({
    this.status,
    this.posts,
    this.pageNo,
    this.pageSize,
    this.totalPosts,
    this.pageCount,
    this.isRetry,
  });

  PostModel copyWith({
    int? status,
    List<Post>? posts,
    int? pageNo,
    int? pageSize,
    int? totalPosts,
    int? pageCount,
    bool? isRetry,
  }) =>
      PostModel(
        status: status ?? this.status,
        posts: posts ?? this.posts,
        pageNo: pageNo ?? this.pageNo,
        pageSize: pageSize ?? this.pageSize,
        totalPosts: totalPosts ?? this.totalPosts,
        pageCount: pageCount ?? this.pageCount,
        isRetry: isRetry ?? this.isRetry,
      );

  factory PostModel.fromRawJson(String str) => PostModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
    status: json["status"],
    posts: json["posts"] == null ? [] : List<Post>.from(json["posts"]!.map((x) => Post.fromJson(x))),
    pageNo: json["pageNo"],
    pageSize: json["pageSize"],
    totalPosts: json["totalPosts"],
    pageCount: json["pageCount"],
    isRetry: json["isRetry"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "posts": posts == null ? [] : List<dynamic>.from(posts!.map((x) => x.toJson())),
    "pageNo": pageNo,
    "pageSize": pageSize,
    "totalPosts": totalPosts,
    "pageCount": pageCount,
    "isRetry": isRetry,
  };
}

class Post {
  String? id;
  dynamic description;
  String? postType;
  dynamic toUserId;
  dynamic eventType;
  dynamic eventSubType;
  User? userId;
  dynamic locationId;
  String? locationName;
  dynamic feelingId;
  dynamic activityId;
  dynamic subActivityId;
  dynamic groupId;
  String? postPrivacy;
  PageId? pageId;
  dynamic campaignId;
  dynamic sharePostId;
  dynamic shareReelsId;
  dynamic workplaceId;
  dynamic instituteId;
  dynamic lifeEventId;
  dynamic link;
  dynamic linkTitle;
  dynamic linkDescription;
  dynamic linkImage;
  dynamic postBackgroundColor;
  dynamic status;
  dynamic ipAddress;
  bool? isHidden;
  bool? pinPost;
  dynamic createdBy;
  dynamic updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  List<Media>? media;
  List<dynamic>? shareMedia;
  List<dynamic>? taggedUserList;
  bool? isFriend;
  bool? isFriendRequestSended;
  List<Comment>? comments;
  int? totalComments;
  int? reactionCount;
  int? postShareCount;
  List<ReactionTypeCountsByPost>? reactionTypeCountsByPost;
  bool? isBookMarked;
  bool? isIgnored;

  Post({
    this.id,
    this.description,
    this.postType,
    this.toUserId,
    this.eventType,
    this.eventSubType,
    this.userId,
    this.locationId,
    this.locationName,
    this.feelingId,
    this.activityId,
    this.subActivityId,
    this.groupId,
    this.postPrivacy,
    this.pageId,
    this.campaignId,
    this.sharePostId,
    this.shareReelsId,
    this.workplaceId,
    this.instituteId,
    this.lifeEventId,
    this.link,
    this.linkTitle,
    this.linkDescription,
    this.linkImage,
    this.postBackgroundColor,
    this.status,
    this.ipAddress,
    this.isHidden,
    this.pinPost,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.media,
    this.shareMedia,
    this.taggedUserList,
    this.isFriend,
    this.isFriendRequestSended,
    this.comments,
    this.totalComments,
    this.reactionCount,
    this.postShareCount,
    this.reactionTypeCountsByPost,
    this.isBookMarked,
    this.isIgnored,
  });

  Post copyWith({
    String? id,
    dynamic description,
    String? postType,
    dynamic toUserId,
    dynamic eventType,
    dynamic eventSubType,
    User? userId,
    dynamic locationId,
    String? locationName,
    dynamic feelingId,
    dynamic activityId,
    dynamic subActivityId,
    dynamic groupId,
    String? postPrivacy,
    PageId? pageId,
    dynamic campaignId,
    dynamic sharePostId,
    dynamic shareReelsId,
    dynamic workplaceId,
    dynamic instituteId,
    dynamic lifeEventId,
    dynamic link,
    dynamic linkTitle,
    dynamic linkDescription,
    dynamic linkImage,
    dynamic postBackgroundColor,
    dynamic status,
    dynamic ipAddress,
    bool? isHidden,
    bool? pinPost,
    dynamic createdBy,
    dynamic updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    List<Media>? media,
    List<dynamic>? shareMedia,
    List<dynamic>? taggedUserList,
    bool? isFriend,
    bool? isFriendRequestSended,
    List<Comment>? comments,
    int? totalComments,
    int? reactionCount,
    int? postShareCount,
    List<ReactionTypeCountsByPost>? reactionTypeCountsByPost,
    bool? isBookMarked,
    bool? isIgnored,
  }) =>
      Post(
        id: id ?? this.id,
        description: description ?? this.description,
        postType: postType ?? this.postType,
        toUserId: toUserId ?? this.toUserId,
        eventType: eventType ?? this.eventType,
        eventSubType: eventSubType ?? this.eventSubType,
        userId: userId ?? this.userId,
        locationId: locationId ?? this.locationId,
        locationName: locationName ?? this.locationName,
        feelingId: feelingId ?? this.feelingId,
        activityId: activityId ?? this.activityId,
        subActivityId: subActivityId ?? this.subActivityId,
        groupId: groupId ?? this.groupId,
        postPrivacy: postPrivacy ?? this.postPrivacy,
        pageId: pageId ?? this.pageId,
        campaignId: campaignId ?? this.campaignId,
        sharePostId: sharePostId ?? this.sharePostId,
        shareReelsId: shareReelsId ?? this.shareReelsId,
        workplaceId: workplaceId ?? this.workplaceId,
        instituteId: instituteId ?? this.instituteId,
        lifeEventId: lifeEventId ?? this.lifeEventId,
        link: link ?? this.link,
        linkTitle: linkTitle ?? this.linkTitle,
        linkDescription: linkDescription ?? this.linkDescription,
        linkImage: linkImage ?? this.linkImage,
        postBackgroundColor: postBackgroundColor ?? this.postBackgroundColor,
        status: status ?? this.status,
        ipAddress: ipAddress ?? this.ipAddress,
        isHidden: isHidden ?? this.isHidden,
        pinPost: pinPost ?? this.pinPost,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
        media: media ?? this.media,
        shareMedia: shareMedia ?? this.shareMedia,
        taggedUserList: taggedUserList ?? this.taggedUserList,
        isFriend: isFriend ?? this.isFriend,
        isFriendRequestSended: isFriendRequestSended ?? this.isFriendRequestSended,
        comments: comments ?? this.comments,
        totalComments: totalComments ?? this.totalComments,
        reactionCount: reactionCount ?? this.reactionCount,
        postShareCount: postShareCount ?? this.postShareCount,
        reactionTypeCountsByPost: reactionTypeCountsByPost ?? this.reactionTypeCountsByPost,
        isBookMarked: isBookMarked ?? this.isBookMarked,
        isIgnored: isIgnored ?? this.isIgnored,
      );

  factory Post.fromRawJson(String str) => Post.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    id: json["_id"],
    description: json["description"],
    postType: json["post_type"],
    toUserId: json["to_user_id"],
    eventType: json["event_type"],
    eventSubType: json["event_sub_type"],
    userId: json["user_id"] == null ? null : User.fromJson(json["user_id"]),
    locationId: json["location_id"],
    locationName: json["location_name"],
    feelingId: json["feeling_id"],
    activityId: json["activity_id"],
    subActivityId: json["sub_activity_id"],
    groupId: json["group_id"],
    postPrivacy: json["post_privacy"],
    pageId: json["page_id"] == null ? null : PageId.fromJson(json["page_id"]),
    campaignId: json["campaign_id"],
    sharePostId: json["share_post_id"],
    shareReelsId: json["share_reels_id"],
    workplaceId: json["workplace_id"],
    instituteId: json["institute_id"],
    lifeEventId: json["life_event_id"],
    link: json["link"],
    linkTitle: json["link_title"],
    linkDescription: json["link_description"],
    linkImage: json["link_image"],
    postBackgroundColor: json["post_background_color"],
    status: json["status"],
    ipAddress: json["ip_address"],
    isHidden: json["is_hidden"],
    pinPost: json["pin_post"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    media: json["media"] == null ? [] : List<Media>.from(json["media"]!.map((x) => Media.fromJson(x))),
    shareMedia: json["shareMedia"] == null ? [] : List<dynamic>.from(json["shareMedia"]!.map((x) => x)),
    taggedUserList: json["tagged_user_list"] == null ? [] : List<dynamic>.from(json["tagged_user_list"]!.map((x) => x)),
    isFriend: json["isFriend"],
    isFriendRequestSended: json["isFriendRequestSended"],
    comments: json["comments"] == null ? [] : List<Comment>.from(json["comments"]!.map((x) => Comment.fromJson(x))),
    totalComments: json["totalComments"],
    reactionCount: json["reactionCount"],
    postShareCount: json["postShareCount"],
    reactionTypeCountsByPost: json["reactionTypeCountsByPost"] == null ? [] : List<ReactionTypeCountsByPost>.from(json["reactionTypeCountsByPost"]!.map((x) => ReactionTypeCountsByPost.fromJson(x))),
    isBookMarked: json["isBookMarked"],
    isIgnored: json["isIgnored"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "description": description,
    "post_type": postType,
    "to_user_id": toUserId,
    "event_type": eventType,
    "event_sub_type": eventSubType,
    "user_id": userId?.toJson(),
    "location_id": locationId,
    "location_name": locationName,
    "feeling_id": feelingId,
    "activity_id": activityId,
    "sub_activity_id": subActivityId,
    "group_id": groupId,
    "post_privacy": postPrivacy,
    "page_id": pageId?.toJson(),
    "campaign_id": campaignId,
    "share_post_id": sharePostId,
    "share_reels_id": shareReelsId,
    "workplace_id": workplaceId,
    "institute_id": instituteId,
    "life_event_id": lifeEventId,
    "link": link,
    "link_title": linkTitle,
    "link_description": linkDescription,
    "link_image": linkImage,
    "post_background_color": postBackgroundColor,
    "status": status,
    "ip_address": ipAddress,
    "is_hidden": isHidden,
    "pin_post": pinPost,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
    "media": media == null ? [] : List<dynamic>.from(media!.map((x) => x.toJson())),
    "shareMedia": shareMedia == null ? [] : List<dynamic>.from(shareMedia!.map((x) => x)),
    "tagged_user_list": taggedUserList == null ? [] : List<dynamic>.from(taggedUserList!.map((x) => x)),
    "isFriend": isFriend,
    "isFriendRequestSended": isFriendRequestSended,
    "comments": comments == null ? [] : List<dynamic>.from(comments!.map((x) => x.toJson())),
    "totalComments": totalComments,
    "reactionCount": reactionCount,
    "postShareCount": postShareCount,
    "reactionTypeCountsByPost": reactionTypeCountsByPost == null ? [] : List<dynamic>.from(reactionTypeCountsByPost!.map((x) => x.toJson())),
    "isBookMarked": isBookMarked,
    "isIgnored": isIgnored,
  };
}

class Comment {
  String? id;
  String? commentName;
  String? postId;
  dynamic postSingleItemId;
  User? userId;
  dynamic commentId;
  String? commentType;
  bool? commentEdited;
  dynamic imageOrVideo;
  dynamic link;
  String? linkTitle;
  String? linkDescription;
  String? linkImage;
  dynamic status;
  dynamic ipAddress;
  dynamic createdBy;
  dynamic updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  List<dynamic>? commentReactions;
  List<dynamic>? replies;

  Comment({
    this.id,
    this.commentName,
    this.postId,
    this.postSingleItemId,
    this.userId,
    this.commentId,
    this.commentType,
    this.commentEdited,
    this.imageOrVideo,
    this.link,
    this.linkTitle,
    this.linkDescription,
    this.linkImage,
    this.status,
    this.ipAddress,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.commentReactions,
    this.replies,
  });

  Comment copyWith({
    String? id,
    String? commentName,
    String? postId,
    dynamic postSingleItemId,
    User? userId,
    dynamic commentId,
    String? commentType,
    bool? commentEdited,
    dynamic imageOrVideo,
    dynamic link,
    String? linkTitle,
    String? linkDescription,
    String? linkImage,
    dynamic status,
    dynamic ipAddress,
    dynamic createdBy,
    dynamic updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    List<dynamic>? commentReactions,
    List<dynamic>? replies,
  }) =>
      Comment(
        id: id ?? this.id,
        commentName: commentName ?? this.commentName,
        postId: postId ?? this.postId,
        postSingleItemId: postSingleItemId ?? this.postSingleItemId,
        userId: userId ?? this.userId,
        commentId: commentId ?? this.commentId,
        commentType: commentType ?? this.commentType,
        commentEdited: commentEdited ?? this.commentEdited,
        imageOrVideo: imageOrVideo ?? this.imageOrVideo,
        link: link ?? this.link,
        linkTitle: linkTitle ?? this.linkTitle,
        linkDescription: linkDescription ?? this.linkDescription,
        linkImage: linkImage ?? this.linkImage,
        status: status ?? this.status,
        ipAddress: ipAddress ?? this.ipAddress,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
        commentReactions: commentReactions ?? this.commentReactions,
        replies: replies ?? this.replies,
      );

  factory Comment.fromRawJson(String str) => Comment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
    id: json["_id"],
    commentName: json["comment_name"],
    postId: json["post_id"],
    postSingleItemId: json["post_single_item_id"],
    userId: json["user_id"] == null ? null : User.fromJson(json["user_id"]),
    commentId: json["comment_id"],
    commentType: json["comment_type"],
    commentEdited: json["comment_edited"],
    imageOrVideo: json["image_or_video"],
    link: json["link"],
    linkTitle: json["link_title"],
    linkDescription: json["link_description"],
    linkImage: json["link_image"],
    status: json["status"],
    ipAddress: json["ip_address"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    commentReactions: json["comment_reactions"] == null ? [] : List<dynamic>.from(json["comment_reactions"]!.map((x) => x)),
    replies: json["replies"] == null ? [] : List<dynamic>.from(json["replies"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "comment_name": commentName,
    "post_id": postId,
    "post_single_item_id": postSingleItemId,
    "user_id": userId?.toJson(),
    "comment_id": commentId,
    "comment_type": commentType,
    "comment_edited": commentEdited,
    "image_or_video": imageOrVideo,
    "link": link,
    "link_title": linkTitle,
    "link_description": linkDescription,
    "link_image": linkImage,
    "status": status,
    "ip_address": ipAddress,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
    "comment_reactions": commentReactions == null ? [] : List<dynamic>.from(commentReactions!.map((x) => x)),
    "replies": replies == null ? [] : List<dynamic>.from(replies!.map((x) => x)),
  };
}

class User {
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  List<dynamic>? emailList;
  String? phone;
  List<dynamic>? phoneList;
  String? password;
  String? profilePic;
  String? coverPic;
  dynamic userStatus;
  String? gender;
  dynamic religion;
  DateTime? dateOfBirth;
  String? userBio;
  List<dynamic>? language;
  dynamic passport;
  DateTime? lastLogin;
  dynamic user2FaStatus;
  dynamic secondaryEmail;
  dynamic recoveryEmail;
  String? relationStatus;
  String? homeTown;
  dynamic birthPlace;
  dynamic bloodGroup;
  String? resetPasswordToken;
  List<dynamic>? websites;
  dynamic userNickname;
  String? userAbout;
  String? presentTown;
  String? resetPasswordTokenExpires;
  dynamic userRole;
  dynamic lockProfile;
  String? status;
  dynamic ipAddress;
  dynamic createdBy;
  dynamic updateBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? dateOfBirthShowType;
  String? emailPrivacy;
  bool? isProfileVerified;
  bool? turnOnEarningDashboard;
  dynamic country;
  dynamic inactivationNote;

  User({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.emailList,
    this.phone,
    this.phoneList,
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
    this.websites,
    this.userNickname,
    this.userAbout,
    this.presentTown,
    this.resetPasswordTokenExpires,
    this.userRole,
    this.lockProfile,
    this.status,
    this.ipAddress,
    this.createdBy,
    this.updateBy,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.dateOfBirthShowType,
    this.emailPrivacy,
    this.isProfileVerified,
    this.turnOnEarningDashboard,
    this.country,
    this.inactivationNote,
  });

  User copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? username,
    String? email,
    List<dynamic>? emailList,
    String? phone,
    List<dynamic>? phoneList,
    String? password,
    String? profilePic,
    String? coverPic,
    dynamic userStatus,
    String? gender,
    dynamic religion,
    DateTime? dateOfBirth,
    String? userBio,
    List<dynamic>? language,
    dynamic passport,
    DateTime? lastLogin,
    dynamic user2FaStatus,
    dynamic secondaryEmail,
    dynamic recoveryEmail,
    String? relationStatus,
    String? homeTown,
    dynamic birthPlace,
    dynamic bloodGroup,
    String? resetPasswordToken,
    List<dynamic>? websites,
    dynamic userNickname,
    String? userAbout,
    String? presentTown,
    String? resetPasswordTokenExpires,
    dynamic userRole,
    dynamic lockProfile,
    String? status,
    dynamic ipAddress,
    dynamic createdBy,
    dynamic updateBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    String? dateOfBirthShowType,
    String? emailPrivacy,
    bool? isProfileVerified,
    bool? turnOnEarningDashboard,
    dynamic country,
    dynamic inactivationNote,
  }) =>
      User(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        username: username ?? this.username,
        email: email ?? this.email,
        emailList: emailList ?? this.emailList,
        phone: phone ?? this.phone,
        phoneList: phoneList ?? this.phoneList,
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
        websites: websites ?? this.websites,
        userNickname: userNickname ?? this.userNickname,
        userAbout: userAbout ?? this.userAbout,
        presentTown: presentTown ?? this.presentTown,
        resetPasswordTokenExpires: resetPasswordTokenExpires ?? this.resetPasswordTokenExpires,
        userRole: userRole ?? this.userRole,
        lockProfile: lockProfile ?? this.lockProfile,
        status: status ?? this.status,
        ipAddress: ipAddress ?? this.ipAddress,
        createdBy: createdBy ?? this.createdBy,
        updateBy: updateBy ?? this.updateBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
        dateOfBirthShowType: dateOfBirthShowType ?? this.dateOfBirthShowType,
        emailPrivacy: emailPrivacy ?? this.emailPrivacy,
        isProfileVerified: isProfileVerified ?? this.isProfileVerified,
        turnOnEarningDashboard: turnOnEarningDashboard ?? this.turnOnEarningDashboard,
        country: country ?? this.country,
        inactivationNote: inactivationNote ?? this.inactivationNote,
      );

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["_id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    username: json["username"],
    email: json["email"],
    emailList: json["email_list"] == null ? [] : List<dynamic>.from(json["email_list"]!.map((x) => x)),
    phone: json["phone"],
    phoneList: json["phone_list"] == null ? [] : List<dynamic>.from(json["phone_list"]!.map((x) => x)),
    password: json["password"],
    profilePic: json["profile_pic"],
    coverPic: json["cover_pic"],
    userStatus: json["user_status"],
    gender: json["gender"],
    religion: json["religion"],
    dateOfBirth: json["date_of_birth"] == null ? null : DateTime.parse(json["date_of_birth"]),
    userBio: json["user_bio"],
    language: json["language"] == null ? [] : List<dynamic>.from(json["language"]!.map((x) => x)),
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
    websites: json["websites"] == null ? [] : List<dynamic>.from(json["websites"]!.map((x) => x)),
    userNickname: json["user_nickname"],
    userAbout: json["user_about"],
    presentTown: json["present_town"],
    resetPasswordTokenExpires: json["reset_password_token_expires"],
    userRole: json["user_role"],
    lockProfile: json["lock_profile"],
    status: json["status"],
    ipAddress: json["ip_address"],
    createdBy: json["created_by"],
    updateBy: json["update_by"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    dateOfBirthShowType: json["date_of_birth_show_type"],
    emailPrivacy: json["email_privacy"],
    isProfileVerified: json["isProfileVerified"],
    turnOnEarningDashboard: json["turn_on_earning_dashboard"],
    country: json["country"],
    inactivationNote: json["inactivation_note"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "first_name": firstName,
    "last_name": lastName,
    "username": username,
    "email": email,
    "email_list": emailList == null ? [] : List<dynamic>.from(emailList!.map((x) => x)),
    "phone": phone,
    "phone_list": phoneList == null ? [] : List<dynamic>.from(phoneList!.map((x) => x)),
    "password": password,
    "profile_pic": profilePic,
    "cover_pic": coverPic,
    "user_status": userStatus,
    "gender": gender,
    "religion": religion,
    "date_of_birth": dateOfBirth?.toIso8601String(),
    "user_bio": userBio,
    "language": language == null ? [] : List<dynamic>.from(language!.map((x) => x)),
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
    "websites": websites == null ? [] : List<dynamic>.from(websites!.map((x) => x)),
    "user_nickname": userNickname,
    "user_about": userAbout,
    "present_town": presentTown,
    "reset_password_token_expires": resetPasswordTokenExpires,
    "user_role": userRole,
    "lock_profile": lockProfile,
    "status": status,
    "ip_address": ipAddress,
    "created_by": createdBy,
    "update_by": updateBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
    "date_of_birth_show_type": dateOfBirthShowType,
    "email_privacy": emailPrivacy,
    "isProfileVerified": isProfileVerified,
    "turn_on_earning_dashboard": turnOnEarningDashboard,
    "country": country,
    "inactivation_note": inactivationNote,
  };
}

class Media {
  String? id;
  dynamic caption;
  String? media;
  dynamic videoThumbnail;
  String? postId;
  dynamic albumId;
  dynamic status;
  dynamic ipAddress;
  dynamic createdBy;
  dynamic updateBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Media({
    this.id,
    this.caption,
    this.media,
    this.videoThumbnail,
    this.postId,
    this.albumId,
    this.status,
    this.ipAddress,
    this.createdBy,
    this.updateBy,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  Media copyWith({
    String? id,
    dynamic caption,
    String? media,
    dynamic videoThumbnail,
    String? postId,
    dynamic albumId,
    dynamic status,
    dynamic ipAddress,
    dynamic createdBy,
    dynamic updateBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) =>
      Media(
        id: id ?? this.id,
        caption: caption ?? this.caption,
        media: media ?? this.media,
        videoThumbnail: videoThumbnail ?? this.videoThumbnail,
        postId: postId ?? this.postId,
        albumId: albumId ?? this.albumId,
        status: status ?? this.status,
        ipAddress: ipAddress ?? this.ipAddress,
        createdBy: createdBy ?? this.createdBy,
        updateBy: updateBy ?? this.updateBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
      );

  factory Media.fromRawJson(String str) => Media.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Media.fromJson(Map<String, dynamic> json) => Media(
    id: json["_id"],
    caption: json["caption"],
    media: json["media"],
    videoThumbnail: json["video_thumbnail"],
    postId: json["post_id"],
    albumId: json["album_id"],
    status: json["status"],
    ipAddress: json["ip_address"],
    createdBy: json["created_by"],
    updateBy: json["update_by"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "caption": caption,
    "media": media,
    "video_thumbnail": videoThumbnail,
    "post_id": postId,
    "album_id": albumId,
    "status": status,
    "ip_address": ipAddress,
    "created_by": createdBy,
    "update_by": updateBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

class PageId {
  String? id;
  String? pageName;
  List<String>? category;
  List<dynamic>? friends;
  List<String>? location;
  String? bio;
  String? description;
  dynamic website;
  dynamic pageNotification;
  dynamic mailNotification;
  dynamic email;
  dynamic address;
  dynamic city;
  String? zipCode;
  String? profilePic;
  String? coverPic;
  String? pageUserName;
  dynamic phoneNumber;
  dynamic whatsapp;
  dynamic instagram;
  dynamic serviceArea;
  dynamic offer;
  dynamic language;
  String? privacy;
  bool? peopleCanMessage;
  bool? hideNumberReaction;
  dynamic inviteFriends;
  String? userId;
  dynamic status;
  dynamic ipAddress;
  dynamic createdBy;
  dynamic updateBy;
  dynamic pageRule;
  dynamic pageMessage;
  dynamic pageReaction;
  dynamic whatsappNumber;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  PageId({
    this.id,
    this.pageName,
    this.category,
    this.friends,
    this.location,
    this.bio,
    this.description,
    this.website,
    this.pageNotification,
    this.mailNotification,
    this.email,
    this.address,
    this.city,
    this.zipCode,
    this.profilePic,
    this.coverPic,
    this.pageUserName,
    this.phoneNumber,
    this.whatsapp,
    this.instagram,
    this.serviceArea,
    this.offer,
    this.language,
    this.privacy,
    this.peopleCanMessage,
    this.hideNumberReaction,
    this.inviteFriends,
    this.userId,
    this.status,
    this.ipAddress,
    this.createdBy,
    this.updateBy,
    this.pageRule,
    this.pageMessage,
    this.pageReaction,
    this.whatsappNumber,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  PageId copyWith({
    String? id,
    String? pageName,
    List<String>? category,
    List<dynamic>? friends,
    List<String>? location,
    String? bio,
    String? description,
    dynamic website,
    dynamic pageNotification,
    dynamic mailNotification,
    dynamic email,
    dynamic address,
    dynamic city,
    String? zipCode,
    String? profilePic,
    String? coverPic,
    String? pageUserName,
    dynamic phoneNumber,
    dynamic whatsapp,
    dynamic instagram,
    dynamic serviceArea,
    dynamic offer,
    dynamic language,
    String? privacy,
    bool? peopleCanMessage,
    bool? hideNumberReaction,
    dynamic inviteFriends,
    String? userId,
    dynamic status,
    dynamic ipAddress,
    dynamic createdBy,
    dynamic updateBy,
    dynamic pageRule,
    dynamic pageMessage,
    dynamic pageReaction,
    dynamic whatsappNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) =>
      PageId(
        id: id ?? this.id,
        pageName: pageName ?? this.pageName,
        category: category ?? this.category,
        friends: friends ?? this.friends,
        location: location ?? this.location,
        bio: bio ?? this.bio,
        description: description ?? this.description,
        website: website ?? this.website,
        pageNotification: pageNotification ?? this.pageNotification,
        mailNotification: mailNotification ?? this.mailNotification,
        email: email ?? this.email,
        address: address ?? this.address,
        city: city ?? this.city,
        zipCode: zipCode ?? this.zipCode,
        profilePic: profilePic ?? this.profilePic,
        coverPic: coverPic ?? this.coverPic,
        pageUserName: pageUserName ?? this.pageUserName,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        whatsapp: whatsapp ?? this.whatsapp,
        instagram: instagram ?? this.instagram,
        serviceArea: serviceArea ?? this.serviceArea,
        offer: offer ?? this.offer,
        language: language ?? this.language,
        privacy: privacy ?? this.privacy,
        peopleCanMessage: peopleCanMessage ?? this.peopleCanMessage,
        hideNumberReaction: hideNumberReaction ?? this.hideNumberReaction,
        inviteFriends: inviteFriends ?? this.inviteFriends,
        userId: userId ?? this.userId,
        status: status ?? this.status,
        ipAddress: ipAddress ?? this.ipAddress,
        createdBy: createdBy ?? this.createdBy,
        updateBy: updateBy ?? this.updateBy,
        pageRule: pageRule ?? this.pageRule,
        pageMessage: pageMessage ?? this.pageMessage,
        pageReaction: pageReaction ?? this.pageReaction,
        whatsappNumber: whatsappNumber ?? this.whatsappNumber,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
      );

  factory PageId.fromRawJson(String str) => PageId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PageId.fromJson(Map<String, dynamic> json) => PageId(
    id: json["_id"],
    pageName: json["page_name"],
    category: json["category"] == null ? [] : List<String>.from(json["category"]!.map((x) => x)),
    friends: json["friends"] == null ? [] : List<dynamic>.from(json["friends"]!.map((x) => x)),
    location: json["location"] == null ? [] : List<String>.from(json["location"]!.map((x) => x)),
    bio: json["bio"],
    description: json["description"],
    website: json["website"],
    pageNotification: json["pageNotification"],
    mailNotification: json["mailNotification"],
    email: json["email"],
    address: json["address"],
    city: json["city"],
    zipCode: json["zip_code"],
    profilePic: json["profile_pic"],
    coverPic: json["cover_pic"],
    pageUserName: json["page_user_name"],
    phoneNumber: json["phone_number"],
    whatsapp: json["whatsapp"],
    instagram: json["instagram"],
    serviceArea: json["service_area"],
    offer: json["offer"],
    language: json["language"],
    privacy: json["privacy"],
    peopleCanMessage: json["people_can_message"],
    hideNumberReaction: json["hide_number_reaction"],
    inviteFriends: json["invite_friends"],
    userId: json["user_id"],
    status: json["status"],
    ipAddress: json["ip_address"],
    createdBy: json["created_by"],
    updateBy: json["update_by"],
    pageRule: json["page_rule"],
    pageMessage: json["page_message"],
    pageReaction: json["page_reaction"],
    whatsappNumber: json["whatsapp_number"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "page_name": pageName,
    "category": category == null ? [] : List<dynamic>.from(category!.map((x) => x)),
    "friends": friends == null ? [] : List<dynamic>.from(friends!.map((x) => x)),
    "location": location == null ? [] : List<dynamic>.from(location!.map((x) => x)),
    "bio": bio,
    "description": description,
    "website": website,
    "pageNotification": pageNotification,
    "mailNotification": mailNotification,
    "email": email,
    "address": address,
    "city": city,
    "zip_code": zipCode,
    "profile_pic": profilePic,
    "cover_pic": coverPic,
    "page_user_name": pageUserName,
    "phone_number": phoneNumber,
    "whatsapp": whatsapp,
    "instagram": instagram,
    "service_area": serviceArea,
    "offer": offer,
    "language": language,
    "privacy": privacy,
    "people_can_message": peopleCanMessage,
    "hide_number_reaction": hideNumberReaction,
    "invite_friends": inviteFriends,
    "user_id": userId,
    "status": status,
    "ip_address": ipAddress,
    "created_by": createdBy,
    "update_by": updateBy,
    "page_rule": pageRule,
    "page_message": pageMessage,
    "page_reaction": pageReaction,
    "whatsapp_number": whatsappNumber,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

class ReactionTypeCountsByPost {
  int? count;
  String? postId;
  String? reactionType;
  String? userId;
  User? userDetails;

  ReactionTypeCountsByPost({
    this.count,
    this.postId,
    this.reactionType,
    this.userId,
    this.userDetails,
  });

  ReactionTypeCountsByPost copyWith({
    int? count,
    String? postId,
    String? reactionType,
    String? userId,
    User? userDetails,
  }) =>
      ReactionTypeCountsByPost(
        count: count ?? this.count,
        postId: postId ?? this.postId,
        reactionType: reactionType ?? this.reactionType,
        userId: userId ?? this.userId,
        userDetails: userDetails ?? this.userDetails,
      );

  factory ReactionTypeCountsByPost.fromRawJson(String str) => ReactionTypeCountsByPost.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReactionTypeCountsByPost.fromJson(Map<String, dynamic> json) => ReactionTypeCountsByPost(
    count: json["count"],
    postId: json["post_id"],
    reactionType: json["reaction_type"],
    userId: json["user_id"],
    userDetails: json["user_details"] == null ? null : User.fromJson(json["user_details"]),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "post_id": postId,
    "reaction_type": reactionType,
    "user_id": userId,
    "user_details": userDetails?.toJson(),
  };
}

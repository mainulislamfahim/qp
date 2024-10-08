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
  String? description;
  String? postType;
  dynamic toUserId;
  dynamic eventType;
  dynamic eventSubType;
  UserId? userId;
  dynamic locationId;
  String? locationName;
  FeelingId? feelingId;
  dynamic activityId;
  dynamic subActivityId;
  GroupId? groupId;
  String? postPrivacy;
  PageId? pageId;
  dynamic campaignId;
  dynamic sharePostId;
  dynamic shareReelsId;
  dynamic workplaceId;
  dynamic instituteId;
  dynamic lifeEventId;
  dynamic link;
  String? linkTitle;
  String? linkDescription;
  String? linkImage;
  String? postBackgroundColor;
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
  List<TaggedUserList>? taggedUserList;
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
    String? description,
    String? postType,
    dynamic toUserId,
    dynamic eventType,
    dynamic eventSubType,
    UserId? userId,
    dynamic locationId,
    String? locationName,
    FeelingId? feelingId,
    dynamic activityId,
    dynamic subActivityId,
    GroupId? groupId,
    String? postPrivacy,
    PageId? pageId,
    dynamic campaignId,
    dynamic sharePostId,
    dynamic shareReelsId,
    dynamic workplaceId,
    dynamic instituteId,
    dynamic lifeEventId,
    dynamic link,
    String? linkTitle,
    String? linkDescription,
    String? linkImage,
    String? postBackgroundColor,
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
    List<TaggedUserList>? taggedUserList,
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
    userId: json["user_id"] == null ? null : UserId.fromJson(json["user_id"]),
    locationId: json["location_id"],
    locationName: json["location_name"],
    feelingId: json["feeling_id"] == null ? null : FeelingId.fromJson(json["feeling_id"]),
    activityId: json["activity_id"],
    subActivityId: json["sub_activity_id"],
    groupId: json["group_id"] == null ? null : GroupId.fromJson(json["group_id"]),
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
    taggedUserList: json["tagged_user_list"] == null ? [] : List<TaggedUserList>.from(json["tagged_user_list"]!.map((x) => TaggedUserList.fromJson(x))),
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
    "feeling_id": feelingId?.toJson(),
    "activity_id": activityId,
    "sub_activity_id": subActivityId,
    "group_id": groupId?.toJson(),
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
    "tagged_user_list": taggedUserList == null ? [] : List<dynamic>.from(taggedUserList!.map((x) => x.toJson())),
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
  UserId? userId;
  String? commentId;
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
  List<Comment>? replies;
  UserId? repliesUserId;
  String? repliesCommentName;
  List<dynamic>? repliesCommentReactions;

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
    this.repliesUserId,
    this.repliesCommentName,
    this.repliesCommentReactions,
  });

  Comment copyWith({
    String? id,
    String? commentName,
    String? postId,
    dynamic postSingleItemId,
    UserId? userId,
    String? commentId,
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
    List<Comment>? replies,
    UserId? repliesUserId,
    String? repliesCommentName,
    List<dynamic>? repliesCommentReactions,
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
        repliesUserId: repliesUserId ?? this.repliesUserId,
        repliesCommentName: repliesCommentName ?? this.repliesCommentName,
        repliesCommentReactions: repliesCommentReactions ?? this.repliesCommentReactions,
      );

  factory Comment.fromRawJson(String str) => Comment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
    id: json["_id"],
    commentName: json["comment_name"],
    postId: json["post_id"],
    postSingleItemId: json["post_single_item_id"],
    userId: json["user_id"] == null ? null : UserId.fromJson(json["user_id"]),
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
    replies: json["replies"] == null ? [] : List<Comment>.from(json["replies"]!.map((x) => Comment.fromJson(x))),
    repliesUserId: json["replies_user_id"] == null ? null : UserId.fromJson(json["replies_user_id"]),
    repliesCommentName: json["replies_comment_name"],
    repliesCommentReactions: json["replies_comment_reactions"] == null ? [] : List<dynamic>.from(json["replies_comment_reactions"]!.map((x) => x)),
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
    "replies": replies == null ? [] : List<dynamic>.from(replies!.map((x) => x.toJson())),
    "replies_user_id": repliesUserId?.toJson(),
    "replies_comment_name": repliesCommentName,
    "replies_comment_reactions": repliesCommentReactions == null ? [] : List<dynamic>.from(repliesCommentReactions!.map((x) => x)),
  };
}

class UserId {
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? emailPrivacy;
  String? dateOfBirthShowType;
  String? phone;
  String? country;
  bool? isProfileVerified;
  String? password;
  String? profilePic;
  String? coverPic;
  dynamic userStatus;
  String? gender;
  String? religion;
  DateTime? dateOfBirth;
  String? userBio;
  dynamic passport;
  DateTime? lastLogin;
  dynamic user2FaStatus;
  dynamic secondaryEmail;
  dynamic recoveryEmail;
  String? relationStatus;
  String? homeTown;
  String? birthPlace;
  dynamic bloodGroup;
  List<dynamic>? websites;
  String? userNickname;
  String? userAbout;
  String? presentTown;
  int? otp;
  dynamic resetPasswordToken;
  dynamic resetPasswordTokenExpires;
  dynamic userRole;
  String? lockProfile;
  bool? turnOnEarningDashboard;
  String? status;
  String? inactivationNote;
  String? ipAddress;
  dynamic createdBy;
  dynamic updateBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  List<dynamic>? emailList;
  List<dynamic>? phoneList;
  List<dynamic>? language;
  OldEducation? oldEducation;
  Workplace? currentWorkplace;
  Workplace? oldWorkplace;

  UserId({
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
    this.emailList,
    this.phoneList,
    this.language,
    this.oldEducation,
    this.currentWorkplace,
    this.oldWorkplace,
  });

  UserId copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? username,
    String? email,
    String? emailPrivacy,
    String? dateOfBirthShowType,
    String? phone,
    String? country,
    bool? isProfileVerified,
    String? password,
    String? profilePic,
    String? coverPic,
    dynamic userStatus,
    String? gender,
    String? religion,
    DateTime? dateOfBirth,
    String? userBio,
    dynamic passport,
    DateTime? lastLogin,
    dynamic user2FaStatus,
    dynamic secondaryEmail,
    dynamic recoveryEmail,
    String? relationStatus,
    String? homeTown,
    String? birthPlace,
    dynamic bloodGroup,
    List<dynamic>? websites,
    String? userNickname,
    String? userAbout,
    String? presentTown,
    int? otp,
    dynamic resetPasswordToken,
    dynamic resetPasswordTokenExpires,
    dynamic userRole,
    String? lockProfile,
    bool? turnOnEarningDashboard,
    String? status,
    String? inactivationNote,
    String? ipAddress,
    dynamic createdBy,
    dynamic updateBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    List<dynamic>? emailList,
    List<dynamic>? phoneList,
    List<dynamic>? language,
    OldEducation? oldEducation,
    Workplace? currentWorkplace,
    Workplace? oldWorkplace,
  }) =>
      UserId(
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
        emailList: emailList ?? this.emailList,
        phoneList: phoneList ?? this.phoneList,
        language: language ?? this.language,
        oldEducation: oldEducation ?? this.oldEducation,
        currentWorkplace: currentWorkplace ?? this.currentWorkplace,
        oldWorkplace: oldWorkplace ?? this.oldWorkplace,
      );

  factory UserId.fromRawJson(String str) => UserId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserId.fromJson(Map<String, dynamic> json) => UserId(
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
    websites: json["websites"] == null ? [] : List<dynamic>.from(json["websites"]!.map((x) => x)),
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
    emailList: json["email_list"] == null ? [] : List<dynamic>.from(json["email_list"]!.map((x) => x)),
    phoneList: json["phone_list"] == null ? [] : List<dynamic>.from(json["phone_list"]!.map((x) => x)),
    language: json["language"] == null ? [] : List<dynamic>.from(json["language"]!.map((x) => x)),
    oldEducation: json["oldEducation"] == null ? null : OldEducation.fromJson(json["oldEducation"]),
    currentWorkplace: json["currentWorkplace"] == null ? null : Workplace.fromJson(json["currentWorkplace"]),
    oldWorkplace: json["oldWorkplace"] == null ? null : Workplace.fromJson(json["oldWorkplace"]),
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
    "websites": websites == null ? [] : List<dynamic>.from(websites!.map((x) => x)),
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
    "email_list": emailList == null ? [] : List<dynamic>.from(emailList!.map((x) => x)),
    "phone_list": phoneList == null ? [] : List<dynamic>.from(phoneList!.map((x) => x)),
    "language": language == null ? [] : List<dynamic>.from(language!.map((x) => x)),
    "oldEducation": oldEducation?.toJson(),
    "currentWorkplace": currentWorkplace?.toJson(),
    "oldWorkplace": oldWorkplace?.toJson(),
  };
}

class Workplace {
  String? id;
  dynamic orgId;
  String? orgName;
  String? userId;
  String? username;
  String? designation;
  DateTime? fromDate;
  dynamic toDate;
  bool? isWorking;
  String? privacy;
  dynamic status;
  dynamic createdBy;
  dynamic updateBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Workplace({
    this.id,
    this.orgId,
    this.orgName,
    this.userId,
    this.username,
    this.designation,
    this.fromDate,
    this.toDate,
    this.isWorking,
    this.privacy,
    this.status,
    this.createdBy,
    this.updateBy,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  Workplace copyWith({
    String? id,
    dynamic orgId,
    String? orgName,
    String? userId,
    String? username,
    String? designation,
    DateTime? fromDate,
    dynamic toDate,
    bool? isWorking,
    String? privacy,
    dynamic status,
    dynamic createdBy,
    dynamic updateBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) =>
      Workplace(
        id: id ?? this.id,
        orgId: orgId ?? this.orgId,
        orgName: orgName ?? this.orgName,
        userId: userId ?? this.userId,
        username: username ?? this.username,
        designation: designation ?? this.designation,
        fromDate: fromDate ?? this.fromDate,
        toDate: toDate ?? this.toDate,
        isWorking: isWorking ?? this.isWorking,
        privacy: privacy ?? this.privacy,
        status: status ?? this.status,
        createdBy: createdBy ?? this.createdBy,
        updateBy: updateBy ?? this.updateBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
      );

  factory Workplace.fromRawJson(String str) => Workplace.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Workplace.fromJson(Map<String, dynamic> json) => Workplace(
    id: json["_id"],
    orgId: json["org_id"],
    orgName: json["org_name"],
    userId: json["user_id"],
    username: json["username"],
    designation: json["designation"],
    fromDate: json["from_date"] == null ? null : DateTime.parse(json["from_date"]),
    toDate: json["to_date"],
    isWorking: json["is_working"],
    privacy: json["privacy"],
    status: json["status"],
    createdBy: json["created_by"],
    updateBy: json["update_by"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "org_id": orgId,
    "org_name": orgName,
    "user_id": userId,
    "username": username,
    "designation": designation,
    "from_date": fromDate?.toIso8601String(),
    "to_date": toDate,
    "is_working": isWorking,
    "privacy": privacy,
    "status": status,
    "created_by": createdBy,
    "update_by": updateBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

class OldEducation {
  String? id;
  String? userId;
  String? username;
  dynamic designation;
  dynamic instituteTypeId;
  dynamic instituteId;
  String? instituteName;
  bool? isStudying;
  DateTime? startDate;
  DateTime? endDate;
  dynamic description;
  String? privacy;
  dynamic status;
  dynamic ipAddress;
  dynamic createdBy;
  dynamic updateBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  OldEducation({
    this.id,
    this.userId,
    this.username,
    this.designation,
    this.instituteTypeId,
    this.instituteId,
    this.instituteName,
    this.isStudying,
    this.startDate,
    this.endDate,
    this.description,
    this.privacy,
    this.status,
    this.ipAddress,
    this.createdBy,
    this.updateBy,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  OldEducation copyWith({
    String? id,
    String? userId,
    String? username,
    dynamic designation,
    dynamic instituteTypeId,
    dynamic instituteId,
    String? instituteName,
    bool? isStudying,
    DateTime? startDate,
    DateTime? endDate,
    dynamic description,
    String? privacy,
    dynamic status,
    dynamic ipAddress,
    dynamic createdBy,
    dynamic updateBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) =>
      OldEducation(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        username: username ?? this.username,
        designation: designation ?? this.designation,
        instituteTypeId: instituteTypeId ?? this.instituteTypeId,
        instituteId: instituteId ?? this.instituteId,
        instituteName: instituteName ?? this.instituteName,
        isStudying: isStudying ?? this.isStudying,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        description: description ?? this.description,
        privacy: privacy ?? this.privacy,
        status: status ?? this.status,
        ipAddress: ipAddress ?? this.ipAddress,
        createdBy: createdBy ?? this.createdBy,
        updateBy: updateBy ?? this.updateBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
      );

  factory OldEducation.fromRawJson(String str) => OldEducation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OldEducation.fromJson(Map<String, dynamic> json) => OldEducation(
    id: json["_id"],
    userId: json["user_id"],
    username: json["username"],
    designation: json["designation"],
    instituteTypeId: json["institute_type_id"],
    instituteId: json["institute_id"],
    instituteName: json["institute_name"],
    isStudying: json["is_studying"],
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    endDate: json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
    description: json["description"],
    privacy: json["privacy"],
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
    "user_id": userId,
    "username": username,
    "designation": designation,
    "institute_type_id": instituteTypeId,
    "institute_id": instituteId,
    "institute_name": instituteName,
    "is_studying": isStudying,
    "startDate": startDate?.toIso8601String(),
    "endDate": endDate?.toIso8601String(),
    "description": description,
    "privacy": privacy,
    "status": status,
    "ip_address": ipAddress,
    "created_by": createdBy,
    "update_by": updateBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

class FeelingId {
  String? id;
  String? feelingName;
  String? logo;
  dynamic dataStatus;
  dynamic ipAddress;
  dynamic createdBy;
  dynamic updateBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  FeelingId({
    this.id,
    this.feelingName,
    this.logo,
    this.dataStatus,
    this.ipAddress,
    this.createdBy,
    this.updateBy,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  FeelingId copyWith({
    String? id,
    String? feelingName,
    String? logo,
    dynamic dataStatus,
    dynamic ipAddress,
    dynamic createdBy,
    dynamic updateBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) =>
      FeelingId(
        id: id ?? this.id,
        feelingName: feelingName ?? this.feelingName,
        logo: logo ?? this.logo,
        dataStatus: dataStatus ?? this.dataStatus,
        ipAddress: ipAddress ?? this.ipAddress,
        createdBy: createdBy ?? this.createdBy,
        updateBy: updateBy ?? this.updateBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
      );

  factory FeelingId.fromRawJson(String str) => FeelingId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FeelingId.fromJson(Map<String, dynamic> json) => FeelingId(
    id: json["_id"],
    feelingName: json["feeling_name"],
    logo: json["logo"],
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
    "feeling_name": feelingName,
    "logo": logo,
    "data_status": dataStatus,
    "ip_address": ipAddress,
    "created_by": createdBy,
    "update_by": updateBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

class GroupId {
  String? id;
  String? groupName;
  String? groupPrivacy;
  String? visibility;
  dynamic deletedAt;
  bool? isPostApprove;
  dynamic participantApproveBy;
  dynamic postApproveBy;
  String? groupCoverPic;
  String? groupDescription;
  String? location;
  dynamic customLink;
  String? address;
  String? zipCode;
  String? groupCreatedUserId;
  dynamic status;
  dynamic ipAddress;
  String? createdBy;
  dynamic createdDate;
  dynamic updateBy;
  dynamic updateDate;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  GroupId({
    this.id,
    this.groupName,
    this.groupPrivacy,
    this.visibility,
    this.deletedAt,
    this.isPostApprove,
    this.participantApproveBy,
    this.postApproveBy,
    this.groupCoverPic,
    this.groupDescription,
    this.location,
    this.customLink,
    this.address,
    this.zipCode,
    this.groupCreatedUserId,
    this.status,
    this.ipAddress,
    this.createdBy,
    this.createdDate,
    this.updateBy,
    this.updateDate,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  GroupId copyWith({
    String? id,
    String? groupName,
    String? groupPrivacy,
    String? visibility,
    dynamic deletedAt,
    bool? isPostApprove,
    dynamic participantApproveBy,
    dynamic postApproveBy,
    String? groupCoverPic,
    String? groupDescription,
    String? location,
    dynamic customLink,
    String? address,
    String? zipCode,
    String? groupCreatedUserId,
    dynamic status,
    dynamic ipAddress,
    String? createdBy,
    dynamic createdDate,
    dynamic updateBy,
    dynamic updateDate,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) =>
      GroupId(
        id: id ?? this.id,
        groupName: groupName ?? this.groupName,
        groupPrivacy: groupPrivacy ?? this.groupPrivacy,
        visibility: visibility ?? this.visibility,
        deletedAt: deletedAt ?? this.deletedAt,
        isPostApprove: isPostApprove ?? this.isPostApprove,
        participantApproveBy: participantApproveBy ?? this.participantApproveBy,
        postApproveBy: postApproveBy ?? this.postApproveBy,
        groupCoverPic: groupCoverPic ?? this.groupCoverPic,
        groupDescription: groupDescription ?? this.groupDescription,
        location: location ?? this.location,
        customLink: customLink ?? this.customLink,
        address: address ?? this.address,
        zipCode: zipCode ?? this.zipCode,
        groupCreatedUserId: groupCreatedUserId ?? this.groupCreatedUserId,
        status: status ?? this.status,
        ipAddress: ipAddress ?? this.ipAddress,
        createdBy: createdBy ?? this.createdBy,
        createdDate: createdDate ?? this.createdDate,
        updateBy: updateBy ?? this.updateBy,
        updateDate: updateDate ?? this.updateDate,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
      );

  factory GroupId.fromRawJson(String str) => GroupId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GroupId.fromJson(Map<String, dynamic> json) => GroupId(
    id: json["_id"],
    groupName: json["group_name"],
    groupPrivacy: json["group_privacy"],
    visibility: json["visibility"],
    deletedAt: json["deleted_at"],
    isPostApprove: json["is_post_approve"],
    participantApproveBy: json["participant_approve_by"],
    postApproveBy: json["post_approve_by"],
    groupCoverPic: json["group_cover_pic"],
    groupDescription: json["group_description"],
    location: json["location"],
    customLink: json["custom_link"],
    address: json["address"],
    zipCode: json["zip_code"],
    groupCreatedUserId: json["group_created_user_id"],
    status: json["status"],
    ipAddress: json["ip_address"],
    createdBy: json["created_by"],
    createdDate: json["created_date"],
    updateBy: json["update_by"],
    updateDate: json["update_Date"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "group_name": groupName,
    "group_privacy": groupPrivacy,
    "visibility": visibility,
    "deleted_at": deletedAt,
    "is_post_approve": isPostApprove,
    "participant_approve_by": participantApproveBy,
    "post_approve_by": postApproveBy,
    "group_cover_pic": groupCoverPic,
    "group_description": groupDescription,
    "location": location,
    "custom_link": customLink,
    "address": address,
    "zip_code": zipCode,
    "group_created_user_id": groupCreatedUserId,
    "status": status,
    "ip_address": ipAddress,
    "created_by": createdBy,
    "created_date": createdDate,
    "update_by": updateBy,
    "update_Date": updateDate,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

class Media {
  String? id;
  String? caption;
  String? media;
  dynamic videoThumbnail;
  String? postId;
  dynamic albumId;
  dynamic status;
  dynamic ipAddress;
  dynamic createdBy;
  dynamic updateBy;
  int? v;
  DateTime? createdAt;
  DateTime? updatedAt;

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
    this.v,
    this.createdAt,
    this.updatedAt,
  });

  Media copyWith({
    String? id,
    String? caption,
    String? media,
    dynamic videoThumbnail,
    String? postId,
    dynamic albumId,
    dynamic status,
    dynamic ipAddress,
    dynamic createdBy,
    dynamic updateBy,
    int? v,
    DateTime? createdAt,
    DateTime? updatedAt,
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
        v: v ?? this.v,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
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
    v: json["__v"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
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
    "__v": v,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
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
  String? website;
  dynamic pageNotification;
  dynamic mailNotification;
  String? email;
  dynamic address;
  dynamic city;
  String? zipCode;
  String? profilePic;
  String? coverPic;
  String? pageUserName;
  String? phoneNumber;
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
  String? whatsappNumber;
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
    String? website,
    dynamic pageNotification,
    dynamic mailNotification,
    String? email,
    dynamic address,
    dynamic city,
    String? zipCode,
    String? profilePic,
    String? coverPic,
    String? pageUserName,
    String? phoneNumber,
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
    String? whatsappNumber,
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
  UserId? userDetails;

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
    UserId? userDetails,
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
    userDetails: json["user_details"] == null ? null : UserId.fromJson(json["user_details"]),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "post_id": postId,
    "reaction_type": reactionType,
    "user_id": userId,
    "user_details": userDetails?.toJson(),
  };
}

class TaggedUserList {
  User? user;

  TaggedUserList({
    this.user,
  });

  TaggedUserList copyWith({
    User? user,
  }) =>
      TaggedUserList(
        user: user ?? this.user,
      );

  factory TaggedUserList.fromRawJson(String str) => TaggedUserList.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TaggedUserList.fromJson(Map<String, dynamic> json) => TaggedUserList(
    user: json["user"] == null ? null : User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "user": user?.toJson(),
  };
}

class User {
  String? id;
  String? firstName;
  String? lastName;
  String? username;

  User({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
  });

  User copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? username,
  }) =>
      User(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        username: username ?? this.username,
      );

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["_id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "first_name": firstName,
    "last_name": lastName,
    "username": username,
  };
}

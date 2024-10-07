// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'dart:convert';

PostModel postModelFromJson(String str) => PostModel.fromJson(json.decode(str));

String postModelToJson(PostModel data) => json.encode(data.toJson());

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
  String? eventType;
  String? eventSubType;
  UserId? userId;
  dynamic locationId;
  String? locationName;
  dynamic feelingId;
  dynamic activityId;
  dynamic subActivityId;
  GroupId? groupId;
  Privacy? postPrivacy;
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
    String? description,
    String? postType,
    dynamic toUserId,
    String? eventType,
    String? eventSubType,
    UserId? userId,
    dynamic locationId,
    String? locationName,
    dynamic feelingId,
    dynamic activityId,
    dynamic subActivityId,
    GroupId? groupId,
    Privacy? postPrivacy,
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
    feelingId: json["feeling_id"],
    activityId: json["activity_id"],
    subActivityId: json["sub_activity_id"],
    groupId: json["group_id"] == null ? null : GroupId.fromJson(json["group_id"]),
    postPrivacy: privacyValues.map[json["post_privacy"]]!,
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
    "group_id": groupId?.toJson(),
    "post_privacy": privacyValues.reverse[postPrivacy],
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
  List<CommentReaction>? commentReactions;
  List<Comment>? replies;
  UserId? repliesUserId;
  String? repliesCommentName;
  List<CommentReaction>? repliesCommentReactions;

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
    List<CommentReaction>? commentReactions,
    List<Comment>? replies,
    UserId? repliesUserId,
    String? repliesCommentName,
    List<CommentReaction>? repliesCommentReactions,
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
    commentReactions: json["comment_reactions"] == null ? [] : List<CommentReaction>.from(json["comment_reactions"]!.map((x) => CommentReaction.fromJson(x))),
    replies: json["replies"] == null ? [] : List<Comment>.from(json["replies"]!.map((x) => Comment.fromJson(x))),
    repliesUserId: json["replies_user_id"] == null ? null : UserId.fromJson(json["replies_user_id"]),
    repliesCommentName: json["replies_comment_name"],
    repliesCommentReactions: json["replies_comment_reactions"] == null ? [] : List<CommentReaction>.from(json["replies_comment_reactions"]!.map((x) => CommentReaction.fromJson(x))),
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
    "comment_reactions": commentReactions == null ? [] : List<dynamic>.from(commentReactions!.map((x) => x.toJson())),
    "replies": replies == null ? [] : List<dynamic>.from(replies!.map((x) => x.toJson())),
    "replies_user_id": repliesUserId?.toJson(),
    "replies_comment_name": repliesCommentName,
    "replies_comment_reactions": repliesCommentReactions == null ? [] : List<dynamic>.from(repliesCommentReactions!.map((x) => x.toJson())),
  };
}

class CommentReaction {
  String? id;
  String? postId;
  dynamic postSingleItemId;
  CreatedBy? userId;
  String? commentId;
  String? commentRepliesId;
  String? reactionType;
  int? v;

  CommentReaction({
    this.id,
    this.postId,
    this.postSingleItemId,
    this.userId,
    this.commentId,
    this.commentRepliesId,
    this.reactionType,
    this.v,
  });

  CommentReaction copyWith({
    String? id,
    String? postId,
    dynamic postSingleItemId,
    CreatedBy? userId,
    String? commentId,
    String? commentRepliesId,
    String? reactionType,
    int? v,
  }) =>
      CommentReaction(
        id: id ?? this.id,
        postId: postId ?? this.postId,
        postSingleItemId: postSingleItemId ?? this.postSingleItemId,
        userId: userId ?? this.userId,
        commentId: commentId ?? this.commentId,
        commentRepliesId: commentRepliesId ?? this.commentRepliesId,
        reactionType: reactionType ?? this.reactionType,
        v: v ?? this.v,
      );

  factory CommentReaction.fromJson(Map<String, dynamic> json) => CommentReaction(
    id: json["_id"],
    postId: json["post_id"],
    postSingleItemId: json["post_single_item_id"],
    userId: createdByValues.map[json["user_id"]]!,
    commentId: json["comment_id"],
    commentRepliesId: json["comment_replies_id"],
    reactionType: json["reaction_type"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "post_id": postId,
    "post_single_item_id": postSingleItemId,
    "user_id": createdByValues.reverse[userId],
    "comment_id": commentId,
    "comment_replies_id": commentRepliesId,
    "reaction_type": reactionType,
    "__v": v,
  };
}

enum CreatedBy {
  THE_6514147376594264_B1103_EFE,
  THE_6517_AAA57_B9_E6_B3_C211_B83_FA,
  THE_66442_C5750_B41_D9_BF89786_E9,
  THE_66_D9356_D29_C408_F8_D4_A5_DC04
}

final createdByValues = EnumValues({
  "6514147376594264b1103efe": CreatedBy.THE_6514147376594264_B1103_EFE,
  "6517aaa57b9e6b3c211b83fa": CreatedBy.THE_6517_AAA57_B9_E6_B3_C211_B83_FA,
  "66442c5750b41d9bf89786e9": CreatedBy.THE_66442_C5750_B41_D9_BF89786_E9,
  "66d9356d29c408f8d4a5dc04": CreatedBy.THE_66_D9356_D29_C408_F8_D4_A5_DC04
});

class UserId {
  CreatedBy? id;
  FirstName? firstName;
  LastName? lastName;
  Username? username;
  Email? email;
  List<dynamic>? emailList;
  String? phone;
  List<dynamic>? phoneList;
  Password? password;
  String? profilePic;
  String? coverPic;
  dynamic userStatus;
  Gender? gender;
  String? religion;
  DateTime? dateOfBirth;
  UserBio? userBio;
  List<dynamic>? language;
  dynamic passport;
  DateTime? lastLogin;
  dynamic user2FaStatus;
  dynamic secondaryEmail;
  dynamic recoveryEmail;
  RelationStatus? relationStatus;
  HomeTown? homeTown;
  BirthPlace? birthPlace;
  dynamic bloodGroup;
  ResetPasswordToken? resetPasswordToken;
  List<dynamic>? websites;
  String? userNickname;
  String? userAbout;
  BirthPlace? presentTown;
  String? resetPasswordTokenExpires;
  dynamic userRole;
  String? lockProfile;
  Status? status;
  dynamic ipAddress;
  dynamic createdBy;
  dynamic updateBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  DateOfBirthShowType? dateOfBirthShowType;
  Privacy? emailPrivacy;
  bool? isProfileVerified;
  bool? turnOnEarningDashboard;
  dynamic country;
  String? inactivationNote;
  OldEducation? oldEducation;
  Workplace? currentWorkplace;
  Workplace? oldWorkplace;

  UserId({
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
    this.oldEducation,
    this.currentWorkplace,
    this.oldWorkplace,
  });

  UserId copyWith({
    CreatedBy? id,
    FirstName? firstName,
    LastName? lastName,
    Username? username,
    Email? email,
    List<dynamic>? emailList,
    String? phone,
    List<dynamic>? phoneList,
    Password? password,
    String? profilePic,
    String? coverPic,
    dynamic userStatus,
    Gender? gender,
    String? religion,
    DateTime? dateOfBirth,
    UserBio? userBio,
    List<dynamic>? language,
    dynamic passport,
    DateTime? lastLogin,
    dynamic user2FaStatus,
    dynamic secondaryEmail,
    dynamic recoveryEmail,
    RelationStatus? relationStatus,
    HomeTown? homeTown,
    BirthPlace? birthPlace,
    dynamic bloodGroup,
    ResetPasswordToken? resetPasswordToken,
    List<dynamic>? websites,
    String? userNickname,
    String? userAbout,
    BirthPlace? presentTown,
    String? resetPasswordTokenExpires,
    dynamic userRole,
    String? lockProfile,
    Status? status,
    dynamic ipAddress,
    dynamic createdBy,
    dynamic updateBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    DateOfBirthShowType? dateOfBirthShowType,
    Privacy? emailPrivacy,
    bool? isProfileVerified,
    bool? turnOnEarningDashboard,
    dynamic country,
    String? inactivationNote,
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
        oldEducation: oldEducation ?? this.oldEducation,
        currentWorkplace: currentWorkplace ?? this.currentWorkplace,
        oldWorkplace: oldWorkplace ?? this.oldWorkplace,
      );

  factory UserId.fromJson(Map<String, dynamic> json) => UserId(
    id: createdByValues.map[json["_id"]]!,
    firstName: firstNameValues.map[json["first_name"]]!,
    lastName: lastNameValues.map[json["last_name"]]!,
    username: usernameValues.map[json["username"]]!,
    email: emailValues.map[json["email"]]!,
    emailList: json["email_list"] == null ? [] : List<dynamic>.from(json["email_list"]!.map((x) => x)),
    phone: json["phone"],
    phoneList: json["phone_list"] == null ? [] : List<dynamic>.from(json["phone_list"]!.map((x) => x)),
    password: passwordValues.map[json["password"]]!,
    profilePic: json["profile_pic"],
    coverPic: json["cover_pic"],
    userStatus: json["user_status"],
    gender: genderValues.map[json["gender"]]!,
    religion: json["religion"],
    dateOfBirth: json["date_of_birth"] == null ? null : DateTime.parse(json["date_of_birth"]),
    userBio: userBioValues.map[json["user_bio"]]!,
    language: json["language"] == null ? [] : List<dynamic>.from(json["language"]!.map((x) => x)),
    passport: json["passport"],
    lastLogin: json["last_login"] == null ? null : DateTime.parse(json["last_login"]),
    user2FaStatus: json["user_2fa_status"],
    secondaryEmail: json["secondary_email"],
    recoveryEmail: json["recovery_email"],
    relationStatus: relationStatusValues.map[json["relation_status"]]!,
    homeTown: homeTownValues.map[json["home_town"]]!,
    birthPlace: birthPlaceValues.map[json["birth_place"]]!,
    bloodGroup: json["blood_group"],
    resetPasswordToken: resetPasswordTokenValues.map[json["reset_password_token"]]!,
    websites: json["websites"] == null ? [] : List<dynamic>.from(json["websites"]!.map((x) => x)),
    userNickname: json["user_nickname"],
    userAbout: json["user_about"],
    presentTown: birthPlaceValues.map[json["present_town"]]!,
    resetPasswordTokenExpires: json["reset_password_token_expires"],
    userRole: json["user_role"],
    lockProfile: json["lock_profile"],
    status: statusValues.map[json["status"]]!,
    ipAddress: json["ip_address"],
    createdBy: json["created_by"],
    updateBy: json["update_by"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    dateOfBirthShowType: dateOfBirthShowTypeValues.map[json["date_of_birth_show_type"]]!,
    emailPrivacy: privacyValues.map[json["email_privacy"]]!,
    isProfileVerified: json["isProfileVerified"],
    turnOnEarningDashboard: json["turn_on_earning_dashboard"],
    country: json["country"],
    inactivationNote: json["inactivation_note"],
    oldEducation: json["oldEducation"] == null ? null : OldEducation.fromJson(json["oldEducation"]),
    currentWorkplace: json["currentWorkplace"] == null ? null : Workplace.fromJson(json["currentWorkplace"]),
    oldWorkplace: json["oldWorkplace"] == null ? null : Workplace.fromJson(json["oldWorkplace"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": createdByValues.reverse[id],
    "first_name": firstNameValues.reverse[firstName],
    "last_name": lastNameValues.reverse[lastName],
    "username": usernameValues.reverse[username],
    "email": emailValues.reverse[email],
    "email_list": emailList == null ? [] : List<dynamic>.from(emailList!.map((x) => x)),
    "phone": phone,
    "phone_list": phoneList == null ? [] : List<dynamic>.from(phoneList!.map((x) => x)),
    "password": passwordValues.reverse[password],
    "profile_pic": profilePic,
    "cover_pic": coverPic,
    "user_status": userStatus,
    "gender": genderValues.reverse[gender],
    "religion": religion,
    "date_of_birth": dateOfBirth?.toIso8601String(),
    "user_bio": userBioValues.reverse[userBio],
    "language": language == null ? [] : List<dynamic>.from(language!.map((x) => x)),
    "passport": passport,
    "last_login": lastLogin?.toIso8601String(),
    "user_2fa_status": user2FaStatus,
    "secondary_email": secondaryEmail,
    "recovery_email": recoveryEmail,
    "relation_status": relationStatusValues.reverse[relationStatus],
    "home_town": homeTownValues.reverse[homeTown],
    "birth_place": birthPlaceValues.reverse[birthPlace],
    "blood_group": bloodGroup,
    "reset_password_token": resetPasswordTokenValues.reverse[resetPasswordToken],
    "websites": websites == null ? [] : List<dynamic>.from(websites!.map((x) => x)),
    "user_nickname": userNickname,
    "user_about": userAbout,
    "present_town": birthPlaceValues.reverse[presentTown],
    "reset_password_token_expires": resetPasswordTokenExpires,
    "user_role": userRole,
    "lock_profile": lockProfile,
    "status": statusValues.reverse[status],
    "ip_address": ipAddress,
    "created_by": createdBy,
    "update_by": updateBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
    "date_of_birth_show_type": dateOfBirthShowTypeValues.reverse[dateOfBirthShowType],
    "email_privacy": privacyValues.reverse[emailPrivacy],
    "isProfileVerified": isProfileVerified,
    "turn_on_earning_dashboard": turnOnEarningDashboard,
    "country": country,
    "inactivation_note": inactivationNote,
    "oldEducation": oldEducation?.toJson(),
    "currentWorkplace": currentWorkplace?.toJson(),
    "oldWorkplace": oldWorkplace?.toJson(),
  };
}

enum BirthPlace {
  DHAKA,
  K_ADHAA
}

final birthPlaceValues = EnumValues({
  "Dhaka": BirthPlace.DHAKA,
  "kADHAA": BirthPlace.K_ADHAA
});

class Workplace {
  String? id;
  dynamic orgId;
  String? orgName;
  CreatedBy? userId;
  Username? username;
  String? designation;
  DateTime? fromDate;
  dynamic toDate;
  bool? isWorking;
  Privacy? privacy;
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
    CreatedBy? userId,
    Username? username,
    String? designation,
    DateTime? fromDate,
    dynamic toDate,
    bool? isWorking,
    Privacy? privacy,
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

  factory Workplace.fromJson(Map<String, dynamic> json) => Workplace(
    id: json["_id"],
    orgId: json["org_id"],
    orgName: json["org_name"],
    userId: createdByValues.map[json["user_id"]]!,
    username: usernameValues.map[json["username"]]!,
    designation: json["designation"],
    fromDate: json["from_date"] == null ? null : DateTime.parse(json["from_date"]),
    toDate: json["to_date"],
    isWorking: json["is_working"],
    privacy: privacyValues.map[json["privacy"]]!,
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
    "user_id": createdByValues.reverse[userId],
    "username": usernameValues.reverse[username],
    "designation": designation,
    "from_date": fromDate?.toIso8601String(),
    "to_date": toDate,
    "is_working": isWorking,
    "privacy": privacyValues.reverse[privacy],
    "status": status,
    "created_by": createdBy,
    "update_by": updateBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

enum Privacy {
  PUBLIC
}

final privacyValues = EnumValues({
  "public": Privacy.PUBLIC
});

enum Username {
  ANIK_BA,
  HANIFRAZULI,
  JOARDER,
  ROKEYAYASMIN1725511021420_C12275_FE94
}

final usernameValues = EnumValues({
  "anik.ba": Username.ANIK_BA,
  "hanifrazuli": Username.HANIFRAZULI,
  "joarder": Username.JOARDER,
  "rokeyayasmin1725511021420c12275fe94": Username.ROKEYAYASMIN1725511021420_C12275_FE94
});

enum DateOfBirthShowType {
  FULL_DATE,
  ONLY_DATE,
  ONLY_YEAR
}

final dateOfBirthShowTypeValues = EnumValues({
  "full_date": DateOfBirthShowType.FULL_DATE,
  "only_date": DateOfBirthShowType.ONLY_DATE,
  "only_year": DateOfBirthShowType.ONLY_YEAR
});

enum Email {
  ANIK_BA_PAKIZATVL_COM,
  HANIFRAZULI_GMAIL_COM,
  MASUDUL_PALLAB99_GMAIL_COM,
  ROKEYAYASMIN_GMAIL_COM
}

final emailValues = EnumValues({
  "anik.ba@pakizatvl.com": Email.ANIK_BA_PAKIZATVL_COM,
  "hanifrazuli@gmail.com": Email.HANIFRAZULI_GMAIL_COM,
  "masudul.pallab99@gmail.com": Email.MASUDUL_PALLAB99_GMAIL_COM,
  "rokeyayasmin@gmail.com": Email.ROKEYAYASMIN_GMAIL_COM
});

enum FirstName {
  HANIF,
  MASUDUL_HASAN,
  MD,
  ROKEYA
}

final firstNameValues = EnumValues({
  "Hanif": FirstName.HANIF,
  "Masudul Hasan": FirstName.MASUDUL_HASAN,
  "Md ": FirstName.MD,
  "Rokeya": FirstName.ROKEYA
});

enum Gender {
  THE_65018_B21577_B4590853_EF574,
  THE_65018_B27577_B4590853_EF576
}

final genderValues = EnumValues({
  "65018b21577b4590853ef574": Gender.THE_65018_B21577_B4590853_EF574,
  "65018b27577b4590853ef576": Gender.THE_65018_B27577_B4590853_EF576
});

enum HomeTown {
  JAMALIPU_RRER,
  JJAJASDFSDF,
  KUSHTIA
}

final homeTownValues = EnumValues({
  "JAMALIPURrer": HomeTown.JAMALIPU_RRER,
  "jjajasdfsdf": HomeTown.JJAJASDFSDF,
  "Kushtia": HomeTown.KUSHTIA
});

enum LastName {
  ANIK_ISLAM,
  JOARDER,
  UDDIN,
  YASMIN
}

final lastNameValues = EnumValues({
  "Anik Islam": LastName.ANIK_ISLAM,
  "Joarder": LastName.JOARDER,
  "Uddin": LastName.UDDIN,
  "Yasmin": LastName.YASMIN
});

class OldEducation {
  String? id;
  CreatedBy? userId;
  Username? username;
  dynamic designation;
  dynamic instituteTypeId;
  dynamic instituteId;
  String? instituteName;
  bool? isStudying;
  DateTime? startDate;
  DateTime? endDate;
  dynamic description;
  Privacy? privacy;
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
    CreatedBy? userId,
    Username? username,
    dynamic designation,
    dynamic instituteTypeId,
    dynamic instituteId,
    String? instituteName,
    bool? isStudying,
    DateTime? startDate,
    DateTime? endDate,
    dynamic description,
    Privacy? privacy,
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

  factory OldEducation.fromJson(Map<String, dynamic> json) => OldEducation(
    id: json["_id"],
    userId: createdByValues.map[json["user_id"]]!,
    username: usernameValues.map[json["username"]]!,
    designation: json["designation"],
    instituteTypeId: json["institute_type_id"],
    instituteId: json["institute_id"],
    instituteName: json["institute_name"],
    isStudying: json["is_studying"],
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    endDate: json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
    description: json["description"],
    privacy: privacyValues.map[json["privacy"]]!,
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
    "user_id": createdByValues.reverse[userId],
    "username": usernameValues.reverse[username],
    "designation": designation,
    "institute_type_id": instituteTypeId,
    "institute_id": instituteId,
    "institute_name": instituteName,
    "is_studying": isStudying,
    "startDate": startDate?.toIso8601String(),
    "endDate": endDate?.toIso8601String(),
    "description": description,
    "privacy": privacyValues.reverse[privacy],
    "status": status,
    "ip_address": ipAddress,
    "created_by": createdBy,
    "update_by": updateBy,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

enum Password {
  THE_2_B_10_Y_WUO_L6_OD_S6_G2_WJS_O_XBUGEIBBI_C1_PC_MTC_IO_PI43_B_ZW_XD4_BO_NIS5_KQ
}

final passwordValues = EnumValues({
  "\u00242b\u002410\u0024yWuoL6OdS6G2/WjsOXbugeibbiC1pcMTCIoPi43bZwXD4boNIS5Kq": Password.THE_2_B_10_Y_WUO_L6_OD_S6_G2_WJS_O_XBUGEIBBI_C1_PC_MTC_IO_PI43_B_ZW_XD4_BO_NIS5_KQ
});

enum RelationStatus {
  MARRIED,
  SINGLE
}

final relationStatusValues = EnumValues({
  "Married": RelationStatus.MARRIED,
  "Single": RelationStatus.SINGLE
});

enum ResetPasswordToken {
  THE_3_D213_A4_DBA782189_EE2_A7_CCB5_D8_F811032_F43_B91
}

final resetPasswordTokenValues = EnumValues({
  "3d213a4dba782189ee2a7ccb5d8f811032f43b91": ResetPasswordToken.THE_3_D213_A4_DBA782189_EE2_A7_CCB5_D8_F811032_F43_B91
});

enum Status {
  ACTIVE
}

final statusValues = EnumValues({
  "active": Status.ACTIVE
});

enum UserBio {
  DROWING_IN_POISON_DROWING_IN_SIN,
  EMPTY,
  HDFJHFH
}

final userBioValues = EnumValues({
  "drowing in poison, drowing in sin": UserBio.DROWING_IN_POISON_DROWING_IN_SIN,
  "বল বীর -চির উন্নত মম শির": UserBio.EMPTY,
  "hdfjhfh": UserBio.HDFJHFH
});

class GroupId {
  String? id;
  String? groupName;
  Privacy? groupPrivacy;
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
  CreatedBy? groupCreatedUserId;
  dynamic status;
  dynamic ipAddress;
  CreatedBy? createdBy;
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
    Privacy? groupPrivacy,
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
    CreatedBy? groupCreatedUserId,
    dynamic status,
    dynamic ipAddress,
    CreatedBy? createdBy,
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

  factory GroupId.fromJson(Map<String, dynamic> json) => GroupId(
    id: json["_id"],
    groupName: json["group_name"],
    groupPrivacy: privacyValues.map[json["group_privacy"]]!,
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
    groupCreatedUserId: createdByValues.map[json["group_created_user_id"]]!,
    status: json["status"],
    ipAddress: json["ip_address"],
    createdBy: createdByValues.map[json["created_by"]]!,
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
    "group_privacy": privacyValues.reverse[groupPrivacy],
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
    "group_created_user_id": createdByValues.reverse[groupCreatedUserId],
    "status": status,
    "ip_address": ipAddress,
    "created_by": createdByValues.reverse[createdBy],
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
  Privacy? privacy;
  bool? peopleCanMessage;
  bool? hideNumberReaction;
  dynamic inviteFriends;
  CreatedBy? userId;
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
    Privacy? privacy,
    bool? peopleCanMessage,
    bool? hideNumberReaction,
    dynamic inviteFriends,
    CreatedBy? userId,
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
    privacy: privacyValues.map[json["privacy"]]!,
    peopleCanMessage: json["people_can_message"],
    hideNumberReaction: json["hide_number_reaction"],
    inviteFriends: json["invite_friends"],
    userId: createdByValues.map[json["user_id"]]!,
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
    "privacy": privacyValues.reverse[privacy],
    "people_can_message": peopleCanMessage,
    "hide_number_reaction": hideNumberReaction,
    "invite_friends": inviteFriends,
    "user_id": createdByValues.reverse[userId],
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
  CreatedBy? userId;
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
    CreatedBy? userId,
    UserId? userDetails,
  }) =>
      ReactionTypeCountsByPost(
        count: count ?? this.count,
        postId: postId ?? this.postId,
        reactionType: reactionType ?? this.reactionType,
        userId: userId ?? this.userId,
        userDetails: userDetails ?? this.userDetails,
      );

  factory ReactionTypeCountsByPost.fromJson(Map<String, dynamic> json) => ReactionTypeCountsByPost(
    count: json["count"],
    postId: json["post_id"],
    reactionType: json["reaction_type"],
    userId: createdByValues.map[json["user_id"]]!,
    userDetails: json["user_details"] == null ? null : UserId.fromJson(json["user_details"]),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "post_id": postId,
    "reaction_type": reactionType,
    "user_id": createdByValues.reverse[userId],
    "user_details": userDetails?.toJson(),
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

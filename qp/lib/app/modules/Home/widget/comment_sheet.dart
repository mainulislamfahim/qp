import 'package:comment_tree/widgets/comment_tree_widget.dart';
import 'package:comment_tree/widgets/tree_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qp/app/model/post/post_model.dart';
import 'package:qp/app/modules/Home/widget/photogallerywidget.dart';
import 'package:qp/app/modules/Home/widget/read_more_textview.dart';
import 'package:qp/helper/cached_network_image_builder.dart';
import 'package:qp/helper/format_time.dart';
import 'package:qp/helper/log_printer.dart';
import 'package:qp/helper/sizedbox_extension.dart';

import '../../../../gen/colors.gen.dart';
import '../../../../helper/app_text_style.dart';

void commentDialog(
    String commentCount, String title, BuildContext context, Post post) {
  final formKey = GlobalKey<FormState>();
  // List<String> listOfUrls = [
  //   "https://cosmosmagazine.com/wp-content/uploads/2020/02/191010_nature.jpg",
  //   "https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg",
  //   "https://upload.wikimedia.org/wikipedia/commons/7/77/Big_Nature_%28155420955%29.jpeg",
  //   "https://s23574.pcdn.co/wp-content/uploads/Singular-1140x703.jpg",
  //   "https://www.expatica.com/app/uploads/sites/9/2017/06/Lake-Oeschinen-1200x675.jpg",
  // ];
  showModalBottomSheet<void>(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    context: context,
    backgroundColor: ColorName.bgColor,
    builder: (BuildContext context) {
      final TextEditingController controller = TextEditingController(text: "");
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
        return Form(
          key: formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: AnimatedPadding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              duration: const Duration(milliseconds: 100),
              curve: Curves.decelerate,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Material(
                      elevation: 0.4,
                      child: Container(
                        color: ColorName.bgColor,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppTextStyle(
                                    text: title,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      icon: const Icon(Icons.close))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 0.5.sh,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemCount: post.comments!.length,
                          itemBuilder: (context, index) {
                            final Comment commentUsers = post.comments![index];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:  CommentTreeWidget<Comment, Comment>(
                                commentUsers,
                                commentUsers.replies ?? [],
                                treeThemeData: TreeThemeData(
                                    lineColor: Colors.grey.shade400,
                                    lineWidth: 1.w),
                                avatarRoot: (context, data) => PreferredSize(
                                  preferredSize: Size.fromRadius(18.r),
                                  child: circularImage(
                                      imgUrl:
                                      commentUsers.userId!.profilePic!,
                                      radius: 18.r),
                                ),
                                contentRoot: (context, data) =>
                                    buildCommentContent(
                                        comment: commentUsers,
                                        onTap: () {
                                        }),
                                avatarChild: (context, data) => PreferredSize(
                                  preferredSize: Size.fromRadius(12.r),
                                  child: circularImage(
                                      imgUrl:
                                      commentUsers.userId!.profilePic!,
                                      radius: 18.r),
                                ),
                                  contentChild: (context, data) => commentUsers.replies!.isEmpty ? const SizedBox.shrink() : Column(
                                    children: List.generate(commentUsers.replies!.length, (item) {
                                      final replies = commentUsers.replies![item];
                                      if(replies.repliesCommentName == ''){
                                        return const SizedBox.shrink();
                                      }else {
                                        return buildReplyContent(
                                          reply: replies, // Make sure to access the correct reply
                                          onTap: () {
                                            // Handle reply tap
                                          },
                                        );
                                      }
                                    }),
                                  )
                              ),
                            );
                          })),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: controller,
                      validator: (value) {
                        if (value!.isEmpty) {
                          // HelperUtils.showToast("Write something...");
                          return "Write something...";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        if (value != null) {
                          //widget.videoController.commentText.value = value;
                        }
                      },
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, color: Colors.black),
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(left: 10, right: 10),
                          suffixIcon: Container(
                            decoration: BoxDecoration(
                              color: ColorName.primaryColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Type a comment',
                          hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 0.5, color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 0.5, color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
    },
  );
}

Widget buildCommentContent(
    {required Comment comment, VoidCallback? onTap}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextStyle(
                text: '${comment.userId!.firstName} ${comment.userId!.lastName}',
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
              ),
              AppReadMoreWidget(text:  comment.commentName!,maxLines: 4,)
            ],
          ),
        ),
      ),
      4.height,
      Row(
        children: [
          AppTextStyle(
            text: FormatTime.formatTimeAgo(comment.createdAt!),
            fontSize: 10.sp,
            color: ColorName.gray410,
          ),
          10.width,
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(10.r),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
              child: AppTextStyle(
                text: "Reply",
                fontSize: 10.sp,
                color: ColorName.blue,
              ),
            ),
          )
        ],
      )
    ],
  );
}

Widget buildReplyContent({required Comment reply, VoidCallback? onTap}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextStyle(
                text: '${reply.repliesUserId!.firstName } ${reply.repliesUserId!.lastName}',
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
              ),

              AppReadMoreWidget(text:   reply.repliesCommentName!,maxLines: 4,)

            ],
          ),
        ),
      ),
      3.height,
      Row(
        children: [
          AppTextStyle(
            text: FormatTime.formatTimeAgo(reply.createdAt!),
            fontSize: 10.sp,
            color: ColorName.gray410,
          ),
          10.width,
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(10.r),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
              child: AppTextStyle(
                text: "Reply",
                fontSize: 10.sp,
                color: ColorName.blue,
              ),
            ),
          )
        ],
      )
    ],
  );
}

//Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       circularImage(
//                                           imgUrl:
//                                               commentUsers.userId!.profilePic!,
//                                           radius: 18.r),
//                                       10.width,
//                                       Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Row(
//                                             children: [
//                                               AppTextStyle(
//                                                   text:
//                                                       '${commentUsers.userId!.firstName} ${commentUsers.userId!.lastName}',
//                                                   fontSize: 16.sp,
//                                                   fontWeight: FontWeight.w500),
//                                               10.width,
//                                               AppTextStyle(
//                                                   text:
//                                                       FormatTime.formatTimeAgo(
//                                                           commentUsers
//                                                               .createdAt!),
//                                                   fontSize: 10.sp,
//                                                   fontWeight: FontWeight.w500,
//                                                   color: Colors.grey),
//                                             ],
//                                           ),
//                                           SizedBox(
//                                             width: 300.w,
//                                             child: AppReadMoreWidget(
//                                               text: commentUsers.commentName!,
//                                               maxLines: 2,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                   commentUsers.replies!.isEmpty ? const SizedBox.shrink() :
//                                   Padding(
//                                     padding: EdgeInsets.only(left: 48.w),
//                                     child: AppReadMoreWidget(
//                                       text:
//                                       commentUsers.replies![0].repliesCommentName!,
//                                       maxLines: 2,
//                                     ),
//                                   ),
//                                 ],
//                               ),
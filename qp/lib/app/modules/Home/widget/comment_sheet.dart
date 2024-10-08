import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qp/app/model/post/post_model.dart';
import 'package:qp/app/modules/Home/widget/photogallerywidget.dart';
import 'package:qp/app/modules/Home/widget/read_more_textview.dart';
import 'package:qp/helper/cached_network_image_builder.dart';
import 'package:qp/helper/format_time.dart';
import 'package:qp/helper/sizedbox_extension.dart';

import '../../../../gen/colors.gen.dart';
import '../../../../helper/app_text_style.dart';


void commentDialog(String commentCount, String title, BuildContext context, Post post) {
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AppTextStyle(
                                    text: "$title Comments",
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
                            final commentUsers = post.comments![index];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          circularImage(imgUrl: commentUsers.userId!.profilePic!, radius: 18.r),
                                          10.width,
                                          AppTextStyle(
                                              text: '${commentUsers.userId!.firstName} ${commentUsers.userId!.lastName}',
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w500),
                                        ],
                                      ),
                                      AppTextStyle(
                                          text: FormatTime.formatTimeAgo(commentUsers.createdAt!),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 48.w),
                                    child: AppReadMoreWidget(
                                      text:
                                          commentUsers.commentName!,
                                      maxLines: 2,
                                    ),
                                  ),
                                  // commentUsers.replies!.isEmpty ? const SizedBox.shrink() :
                                  // Padding(
                                  //   padding: EdgeInsets.only(left: 48.w),
                                  //   child: AppReadMoreWidget(
                                  //     text:
                                  //     commentUsers.replies![index].repliesCommentName!,
                                  //     maxLines: 2,
                                  //   ),
                                  // ),
                                ],
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

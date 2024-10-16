import 'package:chewie/chewie.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qp/app/model/post/post_model.dart';
import 'package:qp/app/modules/Home/widget/comment_sheet.dart';
import 'package:qp/helper/cached_network_image_builder.dart';
import 'package:qp/helper/format_time.dart';
import 'package:qp/helper/loading_animation_widget.dart';
import 'package:qp/helper/sizedbox_extension.dart';
import 'package:readmore/readmore.dart' as an;
import 'package:readmore/readmore.dart';
import 'package:share_plus/share_plus.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helper/app_text_style.dart';
import '../../../../helper/divider.dart';
import '../../../../helper/get_image_url.dart';
import '../../../../helper/iconWithTextButton.dart';
import '../../../../helper/log_printer.dart';
import '../controllers/home_controller.dart';

class PostLayout extends StatelessWidget {
  const PostLayout({super.key, required this.posts, this.item});

  final Post posts;
  final int? item;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: cachedImageHelper(
              imgurl: posts.userId!.profilePic!,
              imgHeight: 40.h,
              imgWidth: 40.w,
            ),
          ),
          title: AppTextStyle(
            text: '${posts.userId!.firstName} ${posts.userId!.lastName}',
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.start,
          ),
          subtitle: Row(
            children: [
              AppTextStyle(text: FormatTime.formatTimeAgo(posts.createdAt!)),
              3.width,
              Icon(
                EvaIcons.globe,
                color: ColorName.gray410,
                size: 20.r,
              ),
            ],
          ),
          trailing: Icon(
            EvaIcons.moreVerticalOutline,
            color: ColorName.gray410,
            size: 20.r,
          ),
        ),
        5.height,
        ReadMoreText(
          posts.description ?? '',
          textAlign: TextAlign.start,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: ColorName.black,
              fontSize: 13.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
          trimMode: TrimMode.Line,
          trimLines: 5,
          colorClickableText: ColorName.primaryColor,
          annotations: [
            an.Annotation(
              regExp: RegExp(r'#([a-zA-Z0-9_]+)'),
              spanBuilder: ({required String text, TextStyle? textStyle}) =>
                  TextSpan(
                text: text,
                style: textStyle?.copyWith(color: Colors.blue),
              ),
            ),
            an.Annotation(
              regExp: RegExp(r'<@(\d+)>'),
              spanBuilder: ({required String text, TextStyle? textStyle}) =>
                  TextSpan(
                text: 'User123',
                style: textStyle?.copyWith(color: Colors.green),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Handle tap, e.g., navigate to a user profile
                  },
              ),
            ),
            // Additional annotations for URLs...
          ],
          moreStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
        ),
        8.height,
        posts.media != null && posts.media!.isNotEmpty
            ? Column(
                children: List.generate(
                  posts.media!.length,
                  (index) {
                    String media =
                        posts.media![index].media.toString().split(".").last;

                    if (media == 'pdf') {
                      return SizedBox(
                        height: 480.h,
                        child: SfPdfViewer.network(
                            canShowScrollHead: false,
                            scrollDirection: PdfScrollDirection.horizontal,
                            GetImageUrl.url(
                                'posts/${posts.media![index].media}')),
                      );
                    } else if (media == 'mp4') {
                      controller.videoInitialize(posts.media![index].media!);

                      return Obx(() {
                        if (controller.isVideoInitialized.value) {
                          return AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Chewie(
                                controller: controller.chewieController!),
                          );
                        } else {
                          return loadingAnimationWidget();
                        }
                      });
                    } else {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: cachedImageHelper(
                            imgurl:
                                'posts/${posts.media![index].media!}', // Use index here
                            imgWidth: Get.width,
                            imgHeight: 200.h),
                      );
                    }
                  },
                ).toList(), // Ensure it's a list of widgets
              )
            : const SizedBox.shrink(),
        10.height,
        Row(
          children: [
            Image.asset(
              Assets.images.like.path,
              height: 16.h,
              width: 16.w,
            ),
            5.width,
            AppTextStyle(
              text: '${posts.reactionCount} liked this post',
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                posts.comments!.isEmpty
                    ? const SizedBox.shrink()
                    : commentDialog(
                        posts.comments!.length.toString(),
                        '${posts.comments![0].userId!.firstName!} Liked this post',
                        context,
                        posts);
              },
              child: AppTextStyle(
                text: '${posts.totalComments} Comments',
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        5.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReactionButton<String>(
              onReactionChanged: (Reaction<String>? reaction) {
                debugPrint('Selected value: ${reaction?.value}');
              },
              reactions: const <Reaction<String>>[
                Reaction<String>(
                  value: 'like',
                  icon: Icon(
                    Icons.thumb_up_alt_rounded,
                    color: Colors.blue,
                  ),
                ),
                Reaction<String>(
                  value: 'love',
                  icon: Icon(
                    Icons.favorite,
                    color: ColorName.crimsonRed,
                  ),
                ),
              ],
              selectedReaction: const Reaction<String>(
                value: 'like_fill',
                icon: Icon(Icons.headphones),
              ),
              itemSize: const Size(25, 25),
            ),
            GestureDetector(
              onTap: () {
                posts.comments!.isEmpty
                    ? const SizedBox.shrink()
                    : commentDialog(
                        posts.comments!.length.toString(),
                        '${posts.comments![0].userId!.firstName!} Liked this post',
                        context,
                        posts);
              },
              child: IconWithTextButton(
                icon: EvaIcons.messageSquare,
                text: 'Comment',
                iconColor: ColorName.gray410,
                fontSize: 14.sp,
              ),
            ),
            GestureDetector(
              onTap: () {
                Share.share(posts.id!);
              },
              child: IconWithTextButton(
                icon: EvaIcons.share,
                text: 'Share',
                iconColor: ColorName.gray410,
                fontSize: 14.sp,
              ),
            )
          ],
        ),
        customDivider(
            color: ColorName.black.withOpacity(0.5), paddingHorizontal: 0),
      ],
    );
  }
}

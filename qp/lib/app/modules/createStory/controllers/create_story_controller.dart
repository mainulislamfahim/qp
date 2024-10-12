import 'dart:typed_data'; // Make sure you're importing this package
import 'dart:ui' as ui;
import 'dart:io';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qp/app/routes/app_pages.dart';
import 'package:qp/helper/app_text_style.dart';
import 'package:qp/helper/handleException.dart';
import 'package:qp/helper/log_printer.dart';
import 'package:qp/repository/api_services.dart';
import 'package:story_maker/story_maker.dart';

class CreateStoryController extends GetxController {
  final GlobalKey globalKey = GlobalKey();
  final apiService = ApiServices();
  Rx<XFile?> image = Rx<XFile?>(null);
  // final EditorController editorController = EditorController();
  // late StoryModel? storyModel;


  Future<void> pickAndEditImage(BuildContext context) async {
    // Request permissions
    await [
      Permission.photos,
      Permission.storage,
    ].request();

    // Pick image from gallery
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // Navigate to StoryMaker for editin]]]]]]]]]]]]]]]]]]]]]]]]
      final editedFile = await Get.to(() => StoryMaker(
            filePath: pickedFile.path,
            doneButtonChild: GestureDetector(
              onTap: () async {
                await createStory(title: 'title',image: pickedFile.path, privacy: 'public');
                Get.offNamed(Routes.HOME);
              },
              child: Container(
                height: 30.h,
                width: 80.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.white,
                    width: 2.w,
                  ),
                ),
                child: Center(child: AppTextStyle(text: 'Add to Story', fontSize: 11.sp,fontWeight: FontWeight.w500,)),
              ),
            ),
          ));

      // Update the image if editing is done
      if (editedFile != null) {
        image.value = editedFile;
      }

      print('Edited File: ${image.value?.path}');
    }
  }

  final isStoryCreate = false.obs;
  Future<void> createStory(
      {required String title, String? image, String? privacy}) async {
    try {
      final response = await apiService.storyPostList(
          title: title, image: image, privacy: privacy);
      if (response.status == 200) {
        isStoryCreate.value = true;
        Get.snackbar('Story', response.message!);
      }
    } catch (e) {
      isStoryCreate.value = true;
      handleException(e);
    }
  }

  Future<bool> onBackPress() async {
    return isStoryCreate.value ? true : false;
  }

  Future<String?> prepareImage() async {
    ByteData? byteData;
    try {
      RenderRepaintBoundary? boundary = globalKey.currentContext
          ?.findRenderObject() as RenderRepaintBoundary?;
      ui.Image? image = await boundary?.toImage(pixelRatio: 4);
      byteData = (await image?.toByteData(format: ui.ImageByteFormat.png));
      Uint8List bytes = byteData!.buffer.asUint8List();

      final directory = (await getTemporaryDirectory()).path;
      String imgPath = '$directory/${Random().nextInt(999999)}.jpg';
      File imgFile = File(imgPath);
      await imgFile.writeAsBytes(bytes);

      return imgFile.path;
    } catch (e) {
      return null;
    }
  }
}

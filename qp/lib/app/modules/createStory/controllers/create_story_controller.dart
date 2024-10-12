import 'dart:typed_data';  // Make sure you're importing this package
import 'dart:ui' as ui;
import 'dart:io';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qp/helper/handleException.dart';
import 'package:qp/helper/log_printer.dart';
import 'package:qp/repository/api_services.dart';


class CreateStoryController extends GetxController {
  final GlobalKey globalKey = GlobalKey();
  final apiService = ApiServices();

  final isStoryCreate = false.obs;
  Future<void> createStory({required String title, String? image, String? privacy}) async {
    try{
      final response = await apiService.storyPostList(title: title, image: image, privacy: privacy);
      if(response.status == 200){
        isStoryCreate.value = true;
        Get.snackbar('Story', response.message!);

      }
    } catch(e){
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

import 'dart:typed_data';  // Make sure you're importing this package
import 'dart:ui' as ui;
import 'dart:io';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:path_provider/path_provider.dart';


class CreateStoryController extends GetxController {
  final GlobalKey globalKey = GlobalKey();


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

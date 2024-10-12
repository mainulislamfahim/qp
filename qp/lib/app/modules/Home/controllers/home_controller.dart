import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:chewie/chewie.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qp/app/model/post/post_model.dart';
import 'package:qp/app/model/story/story_get_model.dart';
import 'package:qp/helper/get_image_url.dart';
import 'package:qp/helper/handleException.dart';
import 'package:qp/helper/log_printer.dart';
import 'package:qp/repository/api_services.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:video_player/video_player.dart';

class HomeController extends GetxController {
  final apiService = ApiServices();
  final post = <Post>[].obs;
  final storyList = <Result>[].obs;

  final pages = 0.obs;

  final postModel = PostModel().obs;
  final StoryController storyController = StoryController();
  final currentPage = 0.obs;
  final pageSize = 20;
  final isEndPage = false.obs;
  final isLoading = false.obs;
  final isInitialize = 100.obs;
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;
  final isVideoInitialized = false.obs;
  var currentStoryIndex = 0.obs;

  var isHomeSelected = false.obs;
  var isVideoSelected = false.obs;
  var isPeopleSelected = false.obs;
  var isNotificationSelected = false.obs;
  var isCartSelected = false.obs;
  var isBookmarkSelected = false.obs;

  // Method to show the next user's story
  void showNextUserStory() {
    if (currentStoryIndex.value < storyList.length - 1) {
      currentStoryIndex.value++;
    } else {
      Get.back(); // Close the view if it's the last story
    }
  }

  // Method to show the previous user's story
  void showPreviousUserStory() {
    if (currentStoryIndex.value > 0) {
      currentStoryIndex.value--;
    } else {
      Get.back(); // Close the view if it's the first story
    }
  }

  /// Fetch Posts
  Future<void> posts() async {
    if (isInitialize.value == 100) {
      isInitialize.value = 1;
    }
    try {
      isLoading.value = true;
      final response = await apiService.post(
        pageNo: currentPage.value + 1,
        pageSize: pageSize,
      );
      if (response.status == 200) {
        if (currentPage.value == 0) {
          post.value = response.posts!;
        } else {
          post.addAll(response.posts!);
        }
        postModel.value = response;
        currentPage.value++;
        isLoading.value = false;
        if (response.totalPosts == post.length) {
          isEndPage.value = true;
        }
        if (isInitialize.value == 1) {
          isInitialize.value = 0;
        }
      }
    } catch (e) {
      handleException(e);
      isLoading.value = false;
      if (isInitialize.value == 1) {
        isInitialize.value = 2;
      }
    }
  }

  /// Fetch Stories
  final isStoryLoading = true.obs;
  Future<void> getStory() async {
    try {
      final response = await apiService.storyGetList();
      isStoryLoading.value = false;

      Log.d(response.results!.length);
      if (response.status == 200) {
        storyList.value = response.results!;
      }
    } catch (e) {
      handleException(e);
      isStoryLoading.value = false;
    }
  }


  /// Video Initialize
  void videoInitialize(String videoUrl) async {
    try {
      videoPlayerController = VideoPlayerController.networkUrl(
          Uri.parse(GetImageUrl.url('posts/$videoUrl')));
      await videoPlayerController?.initialize();
      chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoPlay: false,
        looping: false,
      );
      isVideoInitialized.value =
          true; // Notify that the video is ready to be played
    } catch (e) {
      print('Video initialization error: $e');
      isVideoInitialized.value = false; // Handle error by setting it to false
    }
  }

  @override
  void onInit() {
    posts();
    getStory();
    super.onInit();
  }

  @override
  void onClose() {
    videoPlayerController?.dispose();
    chewieController?.dispose();
    super.onClose();
  }
}

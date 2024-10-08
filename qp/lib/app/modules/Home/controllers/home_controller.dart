import 'package:get/get.dart';
import 'package:qp/app/model/post/post_model.dart';
import 'package:qp/helper/handleException.dart';
import 'package:qp/helper/log_printer.dart';
import 'package:qp/repository/api_services.dart';

class HomeController extends GetxController {
  final apiService = ApiServices();
  final post = <Post>[].obs;
  final postModel = PostModel().obs;
  final currentPage = 0.obs;
  final pageSize = 10;
  final isEndPage = false.obs;
  final isLoading = false.obs;
  final isInitialize = 100.obs;

  var isHomeSelected = false.obs;
  var isVideoSelected = false.obs;
  var isPeopleSelected = false.obs;
  var isNotificationSelected = false.obs;
  var isCartSelected = false.obs;
  var isBookmarkSelected = false.obs;


  Future<void> posts() async {
    if (isInitialize.value == 100) {
      isInitialize.value = 1;
    }
    try{
      isLoading.value = true;
      final response = await apiService.post(pageNo: currentPage.value + 1, pageSize: pageSize,);
      if(response.status == 200) {
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
    } catch(e){
      handleException(e);
      isLoading.value = false;
      if (isInitialize.value == 1) {
        isInitialize.value = 2;
      }
    }
  }

  @override
  void onInit() {
    posts();
    super.onInit();
  }

}

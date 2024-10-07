import 'package:get/get.dart';
import 'package:qp/app/model/post/post_model.dart';
import 'package:qp/helper/handleException.dart';
import 'package:qp/repository/api_services.dart';

class HomeController extends GetxController {
  final apiService = ApiServices();
  final post = <Post>[].obs;
  var isHomeSelected = false.obs;
  var isVideoSelected = false.obs;
  var isPeopleSelected = false.obs;
  var isNotificationSelected = false.obs;
  var isCartSelected = false.obs;
  var isBookmarkSelected = false.obs;


  Future<void> posts({required String pageNo,required String pageSize}) async {
    try{
      final response = await apiService.post(pageNo, pageSize);
      if(response.status == 200) {
        post.value = response.posts!;
      }
    } catch(e){
      handleException(e);
    }
  }

  @override
  void onInit() {
    posts(pageNo: '1', pageSize: '1');
    super.onInit();
  }

}

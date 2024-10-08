import '../repository/api_endpoint.dart';

class GetImageUrl {
  static String url(String url) {
    return '${ApiEndpoint.baseUrl}/uploads/$url';
  }
}

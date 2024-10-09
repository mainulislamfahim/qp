import 'package:qp/helper/log_printer.dart';

import '../repository/api_endpoint.dart';

class GetImageUrl {
  static String url(String url) {
    // Log.w('${ApiEndpoint.baseUrl}/uploads/$url');
    return '${ApiEndpoint.baseUrl}/uploads/$url';
  }
}

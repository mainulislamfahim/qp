import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathprovider;


class HiveService {
  static var box;

  static initHive() async {
    var dir = await pathprovider.getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    box = await Hive.openBox('appData');
  }

  ///  token

  static setToken(String token) {
    box.put('token', token);
  }

  static getToken() {
    return box.get('token');
  }

  static deleteToken() {
    box.delete('token');
  }

  /// User ID
  static setUserID(String id) {
    box.put('id', id);
  }

  static deleteUserID() {
    box.delete('id');
  }

  static  getUserID() async {
    return await box.get('id');
  }


}

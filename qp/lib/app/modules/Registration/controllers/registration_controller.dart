import 'package:get/get.dart';

class RegistrationController extends GetxController {
  final selectDate = DateTime.now().obs;
  final isGenderSelect = false.obs;
  final verticalGroupValue = "Male".obs;
  final status = ["Male", "Female", "Custom"].obs;

  int calculateAge(DateTime birthDate) {
    DateTime now = DateTime.now();
    int age = now.year - birthDate.year;
    if (now.month < birthDate.month || (now.month == birthDate.month && now.day < birthDate.day)) {
      age--;
    }
    return age;
  }
}

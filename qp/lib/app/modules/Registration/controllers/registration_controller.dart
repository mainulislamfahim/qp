import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:qp/app/model/login/login_model.dart';
import 'package:qp/app/model/registration/gender_model.dart';
import 'package:qp/app/routes/app_pages.dart';
import 'package:qp/helper/handleException.dart';
import 'package:qp/helper/log_printer.dart';
import 'package:qp/repository/api_services.dart';

class RegistrationController extends GetxController {
  /// Text Editing Controller
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final password = TextEditingController();

  final apiService = ApiServices();
  final obscureText = false.obs;
  final selectDate = DateTime.now().obs;
  final isGenderSelect = false.obs;
  final allGender = <AllGender>[].obs;
  final verticalGroupValue = "Male".obs;
  String selectedGenderId = '';
  final status = ["Male", "Female", "Others"].obs;

  int calculateAge(DateTime birthDate) {
    DateTime now = DateTime.now();
    int age = now.year - birthDate.year;
    if (now.month < birthDate.month ||
        (now.month == birthDate.month && now.day < birthDate.day)) {
      age--;
    }
    // Log.w(selectDate.value.year);
    // Log.w(selectDate.value.day);
    // Log.w(selectDate.value.month);
    return age;
  }

  Future<void> register(
    String firstName,
    String lastName,
    String email,
    String phone,
    String password,
    String userRole,
    String gender,
    String day,
    String month,
    String year,
  ) async {
    try {
      Log.w(
          "$firstName, $lastName, $email, $phone, $password, $userRole, $gender, $day, $month, $year");
      final response = await apiService.register(firstName, lastName, email,
          phone, password, userRole, gender, day, month, year);
      if (response.status == 200) {
        Get.snackbar('Register', response.message!);
        Get.offNamed(Routes.HOME);
      } else {
        Get.snackbar('Register', response.message!);
      }
    } catch (e) {
      handleException(e);
    }
  }

  Future<void> gender() async {
    try {
      final response = await apiService.gender();
      allGender.value = response.allGender!;
      final defaultGender = allGender.firstWhere(
          (gender) => gender.genderName == verticalGroupValue.value);
      selectedGenderId = defaultGender.id!;
    } catch (e) {
      handleException(e);
    }
  }

  void updateSelectedGender(String selectedGenderName) {
    verticalGroupValue.value = selectedGenderName;
    final selectedGender = allGender.firstWhere(
      (gender) => gender.genderName == selectedGenderName,
      orElse: () => AllGender(id: '', genderName: ''),
    );
    selectedGenderId = selectedGender.id!;
    Log.w("Selected Gender ID: $selectedGenderId");
  }

  @override
  void onInit() {
    gender();
    super.onInit();
  }

  //Login Validation
  var emailError = ''.obs;
  var passwordError = ''.obs;
  var mobileError = ''.obs;
  bool validateInputs() {
    bool isValid = true;
    if (email.text.isEmpty) {
      emailError.value = '* Required';
      isValid = false;
    } else if (!GetUtils.isEmail(email.text)) {
      emailError.value = 'Enter a valid email';
      isValid = false;
    } else {
      emailError.value = '';
    }
    if (password.text.isEmpty) {
      passwordError.value = '* Required';
      isValid = false;
    } else {
      passwordError.value = '';
    }
    return isValid;
  }

  void clear() {
    firstname.clear();
    lastname.clear();
    phone.clear();
    email.clear();
    password.clear();
  }
}
